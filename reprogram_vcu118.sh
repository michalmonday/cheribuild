#export PATH=/local/ecad/xilinx/Vivado/2019.1/bin:$PATH
#./vcu118-run.py --bitfile ../vcu118/jenkins/design_1.bit --ltxfile ../vcu118/jenkins/design_1.ltx --bios ../vcu118/jenkins/bbl-gfe-riscv64-purecap --kernel ../vcu118/jenkins/kernel-riscv64-purecap.CHERI-GFE-NODEBUG --gdb /homes/jrtc4/out/criscv-gdb --openocd /usr/bin/openocd --num-cores <cores-in-bitfile>

export PATH=/home/michal/Xilinx/Vivado/2019.1/bin:$PATH
./vcu118-run.py \
	--bitfile ../BESSPIN-GFE/bitstreams/soc_bluespec_p3.bit \
        --ltxfile ../BESSPIN-GFE/bitstreams/soc_bluespec_p3.ltx \
       	--bios ../cheri/output/sdk/bbl-gfe/riscv64-purecap/bbl \
       	--kernel ../ecats-phase3-evaluation/kernel-riscv64-purecap.CHERI-GFE-NODEBUG \
       	--gdb ../ecats-phase3-evaluation/riscv64-unknown-elf-gdb \
       	--openocd /usr/local/bin/openocd \
       	--num-cores 1

#	--num-cores 2

#      	--bios ../ecats-phase3-evaluation/bbl-cheri \
#	--bitfile ../ecats-phase3-evaluation/bitstreams/soc_bluespec_p3.bit \
#     	--ltxfile ../ecats-phase3-evaluation/bitstreams/soc_bluespec_p3.ltx \


# michal@ubuntu:~/cheribuild$ ./vcu118-run.py --bitfile ../ecats-phase3-evaluati
# on/bitstreams/soc_bluespec_p3.bit        --ltxfile ../ecats-phase3-evaluation/
# bitstreams/soc_bluespec_p3.ltx        --bios ../ecats-phase3-evaluation/bbl-ch
# eri        --kernel ../ecats-phase3-evaluation/kernel-riscv64-purecap.CHERI-GF
# E-NODEBUG        --gdb ../ecats-phase3-evaluation/riscv64-unknown-elf-gdb     
#    --openocd /usr/bin/openocd        --num-cores 2
# Namespace(action='all', benchmark_config=False, bios=PosixPath('/home/michal/e
# cats-phase3-evaluation/bbl-cheri'), bitfile=PosixPath('/home/michal/ecats-phas
# e3-evaluation/bitstreams/soc_bluespec_p3.bit'), gdb=PosixPath('../ecats-phase3
# -evaluation/riscv64-unknown-elf-gdb'), kernel=PosixPath('/home/michal/ecats-ph
# ase3-evaluation/kernel-riscv64-purecap.CHERI-GFE-NODEBUG'), kernel_debug_file=
# None, ltxfile=PosixPath('/home/michal/ecats-phase3-evaluation/bitstreams/soc_b
# luespec_p3.ltx'), num_cores=2, openocd=PosixPath('/usr/bin/openocd'), pretend=
# False, test_command=None, test_timeout=3600)
# vivado -nojournal -notrace -nolog -source /tmp/tmpr3e1r9rz -mode batch -tclarg
# s /home/michal/ecats-phase3-evaluation/bitstreams/soc_bluespec_p3.bit /home/mi
# chal/ecats-phase3-evaluation/bitstreams/soc_bluespec_p3.ltx
# 
# ****** Vivado v2019.1 (64-bit)
#   **** SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#   **** IP Build 2548770 on Fri May 24 18:01:18 MDT 2019
#     ** Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 
# 
# Vivado started
# source /tmp/tmpr3e1r9rz -notrace
# INFO: [Labtools 27-2285] Connecting to hw_server url TCP:localhost:3121
# INFO: [Labtools 27-2222] Launching hw_server...
# INFO: [Labtools 27-2221] Launch Output:
# 
# ****** Xilinx hw_server v2019.1
#   **** Build date : May 24 2019 at 15:06:40
#     ** Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 
# 
# INFO: [Labtoolstcl 44-466] Opening hw_target localhost:3121/xilinx_tcf/Digilen
# t/210308A5F7CB
# ---------------------
# Program Configuration
# ---------------------
# Bitstream : /home/michal/ecats-phase3-evaluation/bitstreams/soc_bluespec_p3.bi
# t
# Probe Info: /home/michal/ecats-phase3-evaluation/bitstreams/soc_bluespec_p3.lt
# x
# 
# Programming...
# 
# Vivado started programming FPGA
# INFO: [Labtools 27-3164] End of startup status: HIGH
# program_hw_devices: Time (s): cpu = 00:00:29 ; elapsed = 00:00:29 . Memory (MB
# ): peak = 1434.098 ; gain = 0.000 ; free physical = 5637 ; free virtual = 1523
# 6
# INFO: [Labtoolstcl 44-464] Closing hw_target localhost:3121/xilinx_tcf/Digilen
# t/210308A5F7CB
# ****** Webtalk v2019.1 (64-bit)
#   **** SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#   **** IP Build 2548770 on Fri May 24 18:01:18 MDT 2019
#     ** Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 
# source /home/michal/cheribuild/.Xil/Vivado-46880-ubuntu/webtalk/labtool_webtal
# k.tcl -notrace
# INFO: [Common 17-206] Exiting Webtalk at Wed Oct 26 12:14:19 2022...
# Done!
# 
# Vivado finished programming FPGA
# INFO: [Common 17-206] Exiting Vivado at Wed Oct 26 12:14:19 2022...
# rm -f webtalk.log
# rm -f webtalk.jou
# 
# Found TTY:/dev/ttyUSB2 - CP2105 Dual USB to UART Bridge Controller - Standard 
# Com Port
# USB VID:PID=10C4:EA70 SER=007F0DE4 LOCATION=3-3.1:1.1
# 
# Connecting to TTY...
# /usr/bin/python3 -m serial.tools.miniterm /dev/ttyUSB2 115200 --eol LF
# Expecting regex ['--- Miniterm on ']
# could not open port '/dev/ttyUSB2': [Errno 13] could not open port /dev/ttyUSB
# 2: [Errno 13] Permission denied: '/dev/ttyUSB2'
# Traceback (most recent call last):
#   File "./vcu118-run.py", line 458, in <module>
#     main()
#   File "./vcu118-run.py", line 437, in main
#     tty_info=tty_info, num_cores=args.num_cores)
#   File "./vcu118-run.py", line 290, in load_and_start_kernel
#     serial_conn = get_console(tty_info)
#   File "./vcu118-run.py", line 284, in get_console
#     return PySerialConnection(tty_info)
#   File "./vcu118-run.py", line 229, in __init__
#     self.cheribsd.expect(["--- Miniterm on "])
#   File "/home/michal/cheribuild/pycheribuild/boot_cheribsd/__init__.py", line 
# 231, in expect
#     timeout=timeout, expect_fn=super().expect, **kwargs)
#   File "/home/michal/cheribuild/pycheribuild/boot_cheribsd/__init__.py", line 
# 257, in _expect_and_handle_panic_impl
#     i = expect_fn(options + panic_regexes, **kwargs)
#   File "/home/michal/cheribuild/3rdparty/pexpect/pexpect/spawnbase.py", line 3
# 49, in expect
#     timeout, searchwindowsize, async_)
#   File "/home/michal/cheribuild/3rdparty/pexpect/pexpect/spawnbase.py", line 3
# 77, in expect_list
#     return exp.expect_loop(timeout)
#   File "/home/michal/cheribuild/3rdparty/pexpect/pexpect/expect.py", line 179,
#  in expect_loop
#     return self.eof(e)
#   File "/home/michal/cheribuild/3rdparty/pexpect/pexpect/expect.py", line 122,
#  in eof
#     raise exc
# pexpect.exceptions.EOF: End Of File (EOF). Exception style platform.
# <pycheribuild.boot_cheribsd.CheriBSDInstance object at 0x7f5cceedafd0>
# command: /usr/bin/python3
# args: [b'/usr/bin/python3', b'-m', b'serial.tools.miniterm', b'/dev/ttyUSB2', 
# b'115200', b'--eol', b'LF']
# buffer (last 100 chars): ''
# before (last 100 chars): "tyUSB2': [Errno 13] could not open port /dev/ttyUSB2
# : [Errno 13] Permission denied: '/dev/ttyUSB2'\r\n"
# after: <class 'pexpect.exceptions.EOF'>
# match: None
# match_index: None
# exitstatus: 1
# flag_eof: True
# pid: 47062
# child_fd: 5
# closed: False
# timeout: 60
# delimiter: <class 'pexpect.exceptions.EOF'>
# logfile: <_io.TextIOWrapper name='<stdout>' mode='w' encoding='UTF-8'>
# logfile_read: None
# logfile_send: None
# maxread: 2000
# ignorecase: False
# searchwindowsize: None
# delaybeforesend: 0.05
# delayafterclose: 0.1
# delayafterterminate: 0.1
# searcher: searcher_re:
#     0: re.compile('--- Miniterm on ')
#     1: re.compile('panic: trap')
#     2: re.compile('Stopped at')
#     3: re.compile('KDB: enter: panic')
#     4: re.compile('panic: Fatal page fault at 0x')
# michal@ubuntu:~/cheribuild$ ls /dev/ | grep ttyUSB
# ttyUSB1
# ttyUSB2
# 
