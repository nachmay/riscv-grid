#-----power analysis------

# === Setup ===
VDD = 0.72
FREQ_MHZ = 500

READ_FRACTION = 0.6
WRITE_FRACTION = 0.6
DESELECT_FRACTION = 0.4

# Memory profiles (real values per memory depth)
memory_profiles = {
    64:  {'read': 2.716, 'write': 2.377, 'deselect': 0.521, 'leakage': 0.4345},
    32: {'read': 2.6345, 'write': 2.245, 'deselect': 0.470, 'leakage': 0.3696},
    16: {'read': 1.801, 'write': 1.603, 'deselect': 0.416, 'leakage': 0.3304},
    8: {'read': 1.158 , 'write': 1.251, 'deselect': 0.338, 'leakage':  0.3030},
}

# IPR controller values (in nW)
ipr_leakage_nW = 114.517
ipr_dynamic_nW = 33277.733
ipr_total_nW = 147342.802  # can be recomputed as well

# RISC-V core reference (in nW)
riscv_leakage_nW = 9748.311
riscv_dynamic_nW = 137594.491
riscv_total_nW = 239187.691

# === Loop through and compute comparisons
for depth, params in memory_profiles.items():
    # Extract currents
    READ = params['read']
    WRITE = params['write']
    DESELECT = params['deselect']
    LEAKAGE = params['leakage']

    # Power (in µW)
    read_power = VDD * READ * FREQ_MHZ * READ_FRACTION
    write_power = VDD * WRITE * FREQ_MHZ * WRITE_FRACTION
    deselect_power = VDD * DESELECT * FREQ_MHZ * DESELECT_FRACTION
    leakage_power = VDD * LEAKAGE * DESELECT_FRACTION

    dynamic_total_uw = read_power + write_power + deselect_power
    total_uw = dynamic_total_uw + leakage_power

    # Convert to nW
    leakage_nW = leakage_power * 1000
    dynamic_nW = dynamic_total_uw * 1000
    total_nW = total_uw * 1000

    # Multiply by 4 memories
    mem_leak_nW_4x = leakage_nW * 4
    mem_dyn_nW_4x = dynamic_nW * 4
    mem_tot_nW_4x = total_nW * 4

    # Add to IPR controller
    system_leak_nW = ipr_leakage_nW*4 + mem_leak_nW_4x
    system_dyn_nW = ipr_dynamic_nW*4 + mem_dyn_nW_4x
    system_total_nW = system_leak_nW + system_dyn_nW

    # Compare
    print(f"\n=== Memory Depth: {depth*4}B ({depth} words) ===")
    print(f"Memory (x4) Total Power       : {mem_tot_nW_4x:.2f} nW")
    print(f"System (4x IPR + 4x MEM) Total   : {system_total_nW:.2f} nW")
    print(f"RISC-V Core Total             : {riscv_total_nW:.2f} nW")

    diff = system_total_nW - riscv_total_nW
    perc = (system_total_nW / riscv_total_nW) * 100

    print(f"Δ vs. RISC-V Core             : {diff:+.2f} nW ({perc:.2f}% of core) {perc/100:.2f}x of core")


# === Area analysis===

# RISC-V core total area (Cell Area + Net Area)
riscv_area = 12085.250  # from: 8383.617 + 4209.47

# IPR controller area
ipr_ctrl_area = 85.477  # total

# Memory configurations: name → area
memory_configs = {
    "256B (64 words)": 1912.75,
    "128B (32 words)": 1750.318,
    "64B (16 words)" : 1143.381,
    "32B (8 words)"  : 835.031,
}

# Evaluate each memory config
for mem_name, mem_area in memory_configs.items():
    total_ipr_area = (ipr_ctrl_area + mem_area)*4
    diff_area = total_ipr_area - riscv_area
    percent_of_core = (total_ipr_area / riscv_area) * 100

    print(f"\n=== IPR Area Report with {mem_name} ===")
    print(f"IPR Control Area         : {ipr_ctrl_area:.3f}")
    print(f"IPR Memory Area          : {mem_area:.3f}")
    print(f"Total IPR Area           : {total_ipr_area:.3f}")
    print(f"RISC-V Core Area         : {riscv_area:.3f}")
    print(f"Δ vs. Core Area          : {diff_area:+.3f}")
    print(f"IPR Area as % of Core    : {percent_of_core:.2f}%")
    print(f"IPR Area as x of Core    : {percent_of_core/100:.2f}x")

