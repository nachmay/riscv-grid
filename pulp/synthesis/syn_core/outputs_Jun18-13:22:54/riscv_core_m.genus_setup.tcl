################################################################################
#
# Genus(TM) Synthesis Solution setup file
# Created by Genus(TM) Synthesis Solution 22.16-s078_1
#   on 06/18/2025 13:37:01
#
#
################################################################################


# This script is intended for use with Genus(TM) Synthesis Solution version 22.16-s078_1


# Remove Existing Design
################################################################################
if {[::legacy::find -design /designs/riscv_core] ne ""} {
  puts "** A design with the same name is already loaded. It will be removed. **"
  delete_obj /designs/riscv_core
}


# To allow user-readonly attributes
################################################################################
::legacy::set_attribute -quiet force_tui_is_remote 1 /

phys::read_script outputs_Jun18-13:22:54/riscv_core_m.root.g


# Libraries
################################################################################
create_library_domain {timing power}
::legacy::set_attribute library {/tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn16ffcllbwp16p90_100a/tcbn16ffcllbwp16p90ssgnp0p72v125c.lib /tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn16ffcllbwp16p90lvt_100a/tcbn16ffcllbwp16p90lvtssgnp0p72v125c.lib} /libraries/library_domains/timing
::legacy::set_attribute library {/tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn16ffcllbwp16p90_100a/tcbn16ffcllbwp16p90ssgnp0p72v125c.lib /tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Front_End/timing_power_noise/NLDM/tcbn16ffcllbwp16p90lvt_100a/tcbn16ffcllbwp16p90lvtssgnp0p72v125c.lib} /libraries/library_domains/power
::legacy::set_attribute -quiet default true timing
::legacy::set_attribute -quiet wireload_selection /libraries/library_domains/timing/tcbn16ffcllbwp16p90ssgnp0p72v125c/wireload_selections/WireAreaForZero timing
::legacy::set_attribute -quiet power_library {/libraries/library_domains/power} /libraries/library_domains/timing
::legacy::set_attribute -quiet wireload_selection /libraries/library_domains/power/tcbn16ffcllbwp16p90ssgnp0p72v125c/wireload_selections/WireAreaForZero power


::legacy::set_attribute lef_library {/tech/tsmc/16FFC/dig_libs/techlef/PRTF_Innovus_16nm_001_Cad_V17_1a/PRTF_Innovus_N16_9M_2Xa1Xd3Xe1Z1U_UTRDL_16.9T_CPODE.17_1a.tlef /tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Back_End/lef/tcbn16ffcllbwp16p90_100a/lef/tcbn16ffcllbwp16p90.lef /tech/tsmc/16FFC/dig_libs/TSMCHOME/digital/Back_End/lef/tcbn16ffcllbwp16p90lvt_100a/lef/tcbn16ffcllbwp16p90lvt.lef} /


# Design
################################################################################
read_netlist -top riscv_core outputs_Jun18-13:22:54/riscv_core_m.v
read_metric -id current outputs_Jun18-13:22:54/riscv_core_m.metrics.json

phys::read_script outputs_Jun18-13:22:54/riscv_core_m.g

phys::read_lec_taf outputs_Jun18-13:22:54/riscv_core_m.lec.taf.gz
phys::read_taf outputs_Jun18-13:22:54/riscv_core_m.safety.taf.gz
puts "\n** Restoration Completed **\n"


# Data Integrity Check
################################################################################
# program version
if {"[string_representation [::legacy::get_attribute program_version /]]" != "22.16-s078_1"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-91] "golden program_version: 22.16-s078_1  current program_version: [string_representation [::legacy::get_attribute program_version /]]"
}
# license
if {"[string_representation [::legacy::get_attribute startup_license /]]" != "Genus_Synthesis"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-91] "golden license: Genus_Synthesis  current license: [string_representation [::legacy::get_attribute startup_license /]]"
}
# slack
set _slk_ [::legacy::get_attribute slack /designs/riscv_core]
if {[regexp {^-?[0-9.]+$} $_slk_]} {
  set _slk_ [format %.1f $_slk_]
}
if {$_slk_ != "0.1"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden slack: 0.1,  current slack: $_slk_"
}
unset _slk_
# multi-mode slack
# tns
set _tns_ [::legacy::get_attribute tns /designs/riscv_core]
if {[regexp {^-?[0-9.]+$} $_tns_]} {
  set _tns_ [format %.0f $_tns_]
}
if {$_tns_ != "0"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden tns: 0,  current tns: $_tns_"
}
unset _tns_
# cell area
set _cell_area_ [::legacy::get_attribute cell_area /designs/riscv_core]
if {[regexp {^-?[0-9.]+$} $_cell_area_]} {
  set _cell_area_ [format %.0f $_cell_area_]
}
if {$_cell_area_ != "7974"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden cell area: 7974,  current cell area: $_cell_area_"
}
unset _cell_area_
# net area
set _net_area_ [::legacy::get_attribute net_area /designs/riscv_core]
if {[regexp {^-?[0-9.]+$} $_net_area_]} {
  set _net_area_ [format %.0f $_net_area_]
}
if {$_net_area_ != "4111"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden net area: 4111,  current net area: $_net_area_"
}
unset _net_area_
# library domain count
if {[llength [::legacy::find /libraries -library_domain *]] != "2"} {
   mesg_send [::legacy::find -message /messages/PHYS/PHYS-92] "golden # library domains: 2  current # library domains: [llength [::legacy::find /libraries -library_domain *]]"
}
