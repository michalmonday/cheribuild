#export PATH=/local/ecad/xilinx/Vivado/2019.1/bin:$PATH
#./vcu118-run.py --bitfile ../vcu118/jenkins/design_1.bit --ltxfile ../vcu118/jenkins/design_1.ltx --bios ../vcu118/jenkins/bbl-gfe-riscv64-purecap --kernel ../vcu118/jenkins/kernel-riscv64-purecap.CHERI-GFE-NODEBUG --gdb /homes/jrtc4/out/criscv-gdb --openocd /usr/bin/openocd --num-cores <cores-in-bitfile>

export PATH=/home/michal/Xilinx/Vivado/2019.1/bin:$PATH
# ./vcu118-run.py \
# 	--bitfile /mnt/hgfs/shared\ ubuntu\ vm\p2_ddr3_wrapper.bit  \
#         --ltxfile /mnt/hgfs/shared\ ubuntu\ vm\p2_ddr3_wrapper.ltx \
#        	--bios ../cheri/output/sdk/bbl-gfe/riscv64-purecap/bbl \
#        	--kernel ../ecats-phase3-evaluation/kernel-riscv64-purecap.CHERI-GFE-NODEBUG \
#        	--gdb ../ecats-phase3-evaluation/riscv64-unknown-elf-gdb \
#        	--openocd /usr/local/bin/openocd \
#        	--num-cores 1


vivado -nojournal -notrace -nolog -source reprogram_scripts/vivado_script_zc706.txt -mode batch -tclargs /mnt/hgfs/shared\ ubuntu\ vm/p2_ddr3_wrapper.bit /mnt/hgfs/shared\ ubuntu\ vm/p2_ddr3_wrapper.ltx

# ~/list_serial_ports.py (CP2103 USB to UART Bridge Controller)
/usr/bin/python3 -m serial.tools.miniterm /dev/ttyUSBx 115200 --eol LF
