import re

def count_matching_sw_lines(trace_lines, start_time_ns, end_time_ns, addr_prefix="1900", val_prefix="dead"):
    count = 0
    for line in trace_lines:
        match_time = re.match(r"(\d+)ns", line)
        if not match_time:
            continue
        timestamp = int(match_time.group(1))
        if not (start_time_ns <= timestamp <= end_time_ns):
            continue
        if " sw " not in line:
            continue
        if re.search(r"(x\d+:|=)" + val_prefix + r"[0-9a-fA-F]{4}", line) and f"PA:{addr_prefix}" in line:
            count += 1
    return count

# Load and process the file
trace_path = "build/trace_core_00_1.log"
with open(trace_path, "r") as f:
    trace_lines = f.readlines()

# Adjust your time window here
start_time = 12400000
end_time = 12500000
#end_time = 12400597

result = count_matching_sw_lines(trace_lines, start_time, end_time)
print(f"Matching writes: {result}")

