# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/wdb15166/SnookerScoreboard/SnookerScoreboard.cache/wt [current_project]
set_property parent.project_path C:/Users/wdb15166/SnookerScoreboard/SnookerScoreboard.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/wdb15166/SnookerScoreboard/SnookerScoreboard.srcs/sources_1/imports/snooker/d_type.vhd
  C:/Users/wdb15166/SnookerScoreboard/SnookerScoreboard.srcs/sources_1/imports/snooker/snooker.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/wdb15166/SnookerScoreboard/SnookerScoreboard.srcs/constrs_1/imports/snooker/nexys4_ddr.xdc
set_property used_in_implementation false [get_files C:/Users/wdb15166/SnookerScoreboard/SnookerScoreboard.srcs/constrs_1/imports/snooker/nexys4_ddr.xdc]


synth_design -top seven_segment -part xc7a100tcsg324-1


write_checkpoint -force -noxdef seven_segment.dcp

catch { report_utilization -file seven_segment_utilization_synth.rpt -pb seven_segment_utilization_synth.pb }