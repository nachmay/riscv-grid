import re
import os

TRACE_DIR = "build"
TRACE_TEMPLATE = "trace_core_00_{}.log"

CORE_PAIRS = [(0, 1), (0, 2), (1, 0), (1, 3), (2, 3), (2, 0), (3, 2), (3, 1)]

#timing for L2
#START_NS = 32400000
#END_NS = 32600000

#timing for tcdm
#START_NS = 32400000
#END_NS = 32600000

#timing for RV-Link
START_NS = 17948000
END_NS = 18300000


all_latencies = []  # Store all latencies globally

def extract_ops_next_cc(trace_lines, start_ns, end_ns):
    ops = []
    for i in range(len(trace_lines) - 1):
        line = trace_lines[i]
        next_line = trace_lines[i + 1]

        if not line.startswith(tuple("0123456789")):
            continue

        try:
            time_ns = int(line.split("ns")[0])
        except:
            continue

        if not (start_ns <= time_ns <= end_ns):
            continue

        if "p.sw" in line or "lw" in line:
            instr = "p.sw" if "p.sw" in line else "lw"

            val_match = re.search(r"x\d+[:=](dead[0-9a-fA-F]{4})", line)
            pa_match = re.search(r"PA:([0-9a-fA-F]{8})", line)

            if not val_match or not pa_match:
                continue

            val = val_match.group(1).lower()
            pa = pa_match.group(1).lower()

            # Get cc from next line
            next_cc_match = re.match(r"\d+ns\s+(\d+)", next_line)
            if not next_cc_match:
                continue
            cc = int(next_cc_match.group(1))

            ops.append((instr, time_ns, cc, pa, val))
    return ops


def compute_latencies(sw_ops, lw_ops):
    latencies = []
    used_lw = set()
    for instr_sw, time_sw, cc_sw, pa_sw, val_sw in sw_ops:
        for i, (instr_lw, time_lw, cc_lw, pa_lw, val_lw) in enumerate(lw_ops):
            if i in used_lw:
                continue
            if pa_sw == pa_lw and val_sw == val_lw and time_lw >= time_sw:
                latencies.append(cc_lw - cc_sw)
                used_lw.add(i)
                break
    return latencies


def analyze_trace_pair(core_a, core_b):
    path_a = os.path.join(TRACE_DIR, TRACE_TEMPLATE.format(core_a))
    path_b = os.path.join(TRACE_DIR, TRACE_TEMPLATE.format(core_b))

    if not os.path.exists(path_a) or not os.path.exists(path_b):
        print(f"❌ Missing trace file(s) for pair {core_a}-{core_b}")
        return

    with open(path_a) as f_a, open(path_b) as f_b:
        lines_a = f_a.readlines()
        lines_b = f_b.readlines()

    sw_ops = [op for op in extract_ops_next_cc(lines_a, START_NS, END_NS) if op[0] == "p.sw"]
    lw_ops = [op for op in extract_ops_next_cc(lines_b, START_NS, END_NS) if op[0] == "lw"]

    latencies = compute_latencies(sw_ops, lw_ops)

    print(f"\n=== Core {core_a} ➝ Core {core_b} ===")
    print(f"SW ops: {len(sw_ops)} | LW ops: {len(lw_ops)} | Matches: {len(latencies)}")

    if latencies:
        print(f"  ⏱  Min: {min(latencies)} cc")
        print(f"  ⏱  Max: {max(latencies)} cc")
        print(f"  ⏱  Avg: {sum(latencies) / len(latencies):.2f} cc")
        all_latencies.extend(latencies)
    else:
        print("  ⚠️  No matched (PA, value) pairs.")


# === Run Analysis ===
for a, b in CORE_PAIRS:
    analyze_trace_pair(a, b)

# === Print Global Stats ===
if all_latencies:
    print("\n📊 Overall Latency Across All Core Pairs:")
    print(f"  Total matches: {len(all_latencies)}")
    print(f"  ⏱  Min: {min(all_latencies)} cc")
    print(f"  ⏱  Max: {max(all_latencies)} cc")
    print(f"  ⏱  Avg: {sum(all_latencies) / len(all_latencies):.2f} cc")
else:
    print("\n📊 No valid latencies found across any core pairs.")


