set projDir "C:/Users/Carey/Desktop/repos/projectx/whack-a-mole/work/vivado"
set projName "whack-a-mole"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/Carey/Desktop/repos/projectx/whack-a-mole/work/verilog/au_top_0.v" "C:/Users/Carey/Desktop/repos/projectx/whack-a-mole/work/verilog/gamefsm_1.v" "C:/Users/Carey/Desktop/repos/projectx/whack-a-mole/work/verilog/reset_conditioner_2.v" "C:/Users/Carey/Desktop/repos/projectx/whack-a-mole/work/verilog/button_conditioner_3.v" "C:/Users/Carey/Desktop/repos/projectx/whack-a-mole/work/verilog/stateCounter_4.v" "C:/Users/Carey/Desktop/repos/projectx/whack-a-mole/work/verilog/multi_seven_seg_5.v" "C:/Users/Carey/Desktop/repos/projectx/whack-a-mole/work/verilog/pipeline_6.v" "C:/Users/Carey/Desktop/repos/projectx/whack-a-mole/work/verilog/counter_7.v" "C:/Users/Carey/Desktop/repos/projectx/whack-a-mole/work/verilog/seven_seg_8.v" "C:/Users/Carey/Desktop/repos/projectx/whack-a-mole/work/verilog/decoder_9.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/Carey/Desktop/repos/projectx/whack-a-mole/work/constraint/alchitry.xdc" "C:/Program\ Files/Alchitry/Alchitry\ Labs/library/components/au.xdc" "C:/Users/Carey/Desktop/repos/projectx/whack-a-mole/work/constraint/custom.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
