import re

def count_lines_in_time_range(trace_lines, start_time_ns, end_time_ns):
    count = 0
    for line in trace_lines:
        match_time = re.match(r"(\d+)ns", line)
        if not match_time:
            continue
        timestamp = int(match_time.group(1))
        if start_time_ns <= timestamp <= end_time_ns:
            count += 1
    return count

# Example usage
trace_path = "build/trace_core_00_0.log"
with open(trace_path, "r") as f:
    trace_lines = f.readlines()

# Set your time window
start_time = 12400000
end_time = 12500000

result = count_lines_in_time_range(trace_lines, start_time, end_time)
print(f"Lines between {start_time}ns and {end_time}ns: {result}")

