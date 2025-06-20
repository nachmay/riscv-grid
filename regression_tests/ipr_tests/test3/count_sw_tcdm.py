import re

def count_matching_lines(trace_lines, start_time_ns, end_time_ns):
    count = 0
    for line in trace_lines:
        match_time = re.match(r"(\d+)ns", line)
        if not match_time:
            continue
        timestamp = int(match_time.group(1))
        if not (start_time_ns <= timestamp <= end_time_ns):
            continue
        if "p.sw" in line and \
           re.search(r"(x\d+:|=)dead[0-9a-fA-F]{4}", line) and \
           "PA:1000" in line:
            count += 1
    return count

# Example usage:
with open("build/trace_core_00_1.log", "r") as f:
    trace_lines = f.readlines()

matches = count_matching_lines(trace_lines, 14800000, 14900000)
#matches = count_matching_lines(trace_lines, 14976251, 14976669)

print(f"Matching lines: {matches}")

