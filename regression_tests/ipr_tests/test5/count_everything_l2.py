
import re

def count_matching_sw_lines(trace_lines, start_time_ns, end_time_ns, addr_prefix, val_prefix):
    count = 0
    for line in trace_lines:
        # Match timestamp from the start
        match_time = re.match(r"(\d+)ns", line)
        if not match_time:
            continue
        timestamp = int(match_time.group(1))
        if not (start_time_ns <= timestamp <= end_time_ns):
            continue

        # Check for "sw" instruction
        if "p.sw" not in line:
            continue

        # Match value and physical address
        if re.search(r"x\d+:" + val_prefix + r"[0-9a-fA-F]{2}", line) and f"PA:{addr_prefix}" in line:
            count += 1
    return count



def count_matching_lw_lines(trace_lines, start_time_ns, end_time_ns, addr_prefix, val_prefix):
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


trace_path_0 = "build/trace_core_00_0.log"
with open(trace_path_0, "r") as f_0:
    trace_lines_0 = f_0.readlines()

trace_path_1 = "build/trace_core_00_1.log"
with open(trace_path_1, "r") as f_1:
    trace_lines_1 = f_1.readlines()

trace_path_2 = "build/trace_core_00_2.log"
with open(trace_path_2, "r") as f_2:
    trace_lines_2 = f_2.readlines()
trace_path_3 = "build/trace_core_00_3.log"
with open(trace_path_3, "r") as f_3:
    trace_lines_3 = f_3.readlines()


start_time = 32400000
end_time =   32600000

val_prefix_0_write = "dead00"
val_prefix_1_write = "dead01"
val_prefix_2_write = "dead02"
val_prefix_3_write = "dead03"



result_0_write_1 = count_matching_sw_lines(trace_lines_0, start_time, end_time, "1c016", val_prefix_0_write)
print(f"Matching writes: 0_write_1 {result_0_write_1}")


result_1_read_0 = count_matching_lw_lines(trace_lines_1, start_time, end_time, "1c016", val_prefix_0_write)
print(f"Matching loads: 1_read_0 {result_1_read_0}")


result_0_write_2 = count_matching_sw_lines(trace_lines_0, start_time, end_time, "1c018", val_prefix_0_write)
print(f"Matching writes: result_0_write_2 {result_0_write_2}")


result_2_read_0 = count_matching_lw_lines(trace_lines_2, start_time, end_time, "1c018", val_prefix_0_write)
print(f"Matching loads: 2_read_0 {result_2_read_0}")






result_1_write_0 = count_matching_sw_lines(trace_lines_1, start_time, end_time, "1c013", val_prefix_1_write)
print(f"Matching writes: 1_write_0 {result_1_write_0}")


result_0_read_1 = count_matching_lw_lines(trace_lines_0, start_time, end_time, "1c013", val_prefix_1_write)
print(f"Matching loads: 0_read_1 {result_0_read_1}")


result_1_write_3 = count_matching_sw_lines(trace_lines_1, start_time, end_time, "1c01c", val_prefix_1_write)
print(f"Matching writes: result_1_write_3 {result_1_write_3}")


result_3_read_1 = count_matching_lw_lines(trace_lines_3, start_time, end_time, "1c01c", val_prefix_1_write)
print(f"Matching loads: 3_read_1 {result_3_read_1}")







result_2_write_3 = count_matching_sw_lines(trace_lines_2, start_time, end_time, "1c01e", val_prefix_2_write)
print(f"Matching writes: 2_write_3 {result_2_write_3}")


result_3_read_2 = count_matching_lw_lines(trace_lines_3, start_time, end_time, "1c01e", val_prefix_2_write)
print(f"Matching loads: 3_read_2 {result_3_read_2}")


result_2_write_0 = count_matching_sw_lines(trace_lines_2, start_time, end_time, "1c011", val_prefix_2_write)
print(f"Matching writes: result_2_write_0 {result_2_write_0}")


result_0_read_2 = count_matching_lw_lines(trace_lines_0, start_time, end_time, "1c011", val_prefix_2_write)
print(f"Matching loads: 0_read_2 {result_0_read_2}")






result_3_write_2 = count_matching_sw_lines(trace_lines_3, start_time, end_time, "1c01b", val_prefix_3_write)
print(f"Matching writes: 3_write_2 {result_3_write_2}")


result_2_read_3 = count_matching_lw_lines(trace_lines_2, start_time, end_time, "1c01b", val_prefix_3_write)
print(f"Matching loads: 2_read_3 {result_2_read_3}")


result_3_write_1 = count_matching_sw_lines(trace_lines_3, start_time, end_time, "1c015", val_prefix_3_write)
print(f"Matching writes: result_3_write_1 {result_3_write_1}")


result_1_read_3 = count_matching_lw_lines(trace_lines_1, start_time, end_time, "1c015", val_prefix_3_write)
print(f"Matching loads: 1_read_3 {result_1_read_3}")



