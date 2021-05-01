# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/VLSI/adaptive_filter/adaptive_filter/adaptive_filter.cache/wt [current_project]
set_property parent.project_path C:/Users/VLSI/adaptive_filter/adaptive_filter/adaptive_filter.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
add_files -quiet c:/Users/VLSI/adaptive_filter/adaptive_filter/adaptive_filter.srcs/sources_1/ip/vio_0/vio_0.dcp
set_property used_in_implementation false [get_files c:/Users/VLSI/adaptive_filter/adaptive_filter/adaptive_filter.srcs/sources_1/ip/vio_0/vio_0.dcp]
read_verilog -library xil_defaultlib {
  C:/Users/VLSI/adaptive_filter/adaptive_filter/adaptive_filter.srcs/sources_1/new/da_divided.v
  C:/Users/VLSI/adaptive_filter/adaptive_filter/adaptive_filter.srcs/sources_1/new/vio_file.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/VLSI/adaptive_filter/adaptive_filter/adaptive_filter.srcs/constrs_1/new/vio_file.xdc
set_property used_in_implementation false [get_files C:/Users/VLSI/adaptive_filter/adaptive_filter/adaptive_filter.srcs/constrs_1/new/vio_file.xdc]


synth_design -top vio_file -part xc7a100tcsg324-1


write_checkpoint -force -noxdef vio_file.dcp

catch { report_utilization -file vio_file_utilization_synth.rpt -pb vio_file_utilization_synth.pb }
