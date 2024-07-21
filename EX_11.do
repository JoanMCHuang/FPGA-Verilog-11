# compile

vlog EX_11.v
vlog EX_11_tb.v

# simulate
vsim -debugdb testbench

#probe signals
add wave -noupdate -format -logic	       /testbench/EX11_instance/a1
add wave -noupdate -format -logic	       /testbench/EX11_instance/a2
add wave -noupdate -format -logic	       /testbench/EX11_instance/b1
add wave -noupdate -format -logic	       /testbench/EX11_instance/b2
add wave -noupdate -format -logic	       /testbench/EX11_instance/b3
add wave -noupdate -format -logic	       /testbench/EX11_instance/b4
add wave -noupdate -format -logic	       /testbench/EX11_instance/d
add wave -noupdate -format -logic	       /testbench/EX11_instance/z
add wave -noupdate -format -logic	       /testbench/EX11_instance/reset
add wave -noupdate -format -logic	       /testbench/EX11_instance/sel1
add wave -noupdate -format -logic	       /testbench/EX11_instance/sel2
add wave -noupdate -format -logic	       /testbench/EX11_instance/sel3
add wave -noupdate -format -logic	       /testbench/EX11_instance/sel4
add wave -noupdate -format -logic	       /testbench/EX11_instance/tmp1
add wave -noupdate -format -logic	       /testbench/EX11_instance/tmp2
add wave -noupdate -format -logic	       /testbench/EX11_instance/tmp3
add wave -noupdate -format -logic	       /testbench/EX11_instance/g

# 250 ns
run 250
