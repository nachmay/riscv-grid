import re

def count_matching_lw_lines(trace_lines, start_time_ns, end_time_ns, addr_prefix="19000020", val_prefix="dead00"):
    count = 0
    for line in trace_lines:
        # Match timestamp
        match_time = re.match(r"(\d+)ns", line)
        if not match_time:
            continue
        timestamp = int(match_time.group(1))
        if not (start_time_ns <= timestamp <= end_time_ns):
            continue

        # Check for lw instruction
        if "lw" not in line:
            continue

        # Check for address and value prefix (x12=dead01xx or x12:dead01xx)
        if f"PA:{addr_prefix}" in line and re.search(r"x\d+[:=]" + val_prefix + r"[0-9a-fA-F]{2}", line):
            count += 1
    return count

# Load trace
trace_path = "build/trace_core_00_1.log"
with open(trace_path, "r") as f:
    trace_lines = f.readlines()

start_time = 13500000
end_time = 13700000

result = count_matching_lw_lines(trace_lines, start_time, end_time)
print(f"Matching loads: {result}")

