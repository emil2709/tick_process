# tick_process
This script takes in a process and calculate all time stats for the process.

First:

```gcc -o prime prime.c``` compiling the C script

```chmod +rd getproc.sh``` Give access to execute the file.

The ```prime``` file is a test script whitch utilizes on average 50% CPU time.



HOW TO RUN THE SCRIPT

```./getproc <script> <CPU>```

CPU = the CPU-number on you want the script to be executed on.

EXAMPLE

```./getproc.sh prime 0```

The ouput is stored in a TXT FILE with the format ```<PID>-<script>.txt```  
See file ```19403-prime.txt``` = the output of the abow command.

The script feches data evry 100ms (0.1 secs).

A typical line in the file:

```19403 537 10 0 0 9194817 9195917 1100 .4972```

line 1 = Process ID  
line 2 = CPU time spent in user code, measured in clock ticks  
line 3 = CPU time spent in kernel code, measured in clock ticks  
line 4 = Waited-for children's CPU time spent in user code (in clock ticks)  
line 5 = Waited-for children's CPU time spent in kernel code (in clock ticks)  
line 6 = Time when the process started, measured in clock ticks  
line 7 = Current time, measured in clock ticks  
line 8 = How many ticks the provess have used in ticks. (1100 ticks = 11.0 secs)  
line 9 = CPU utilization (line 2-5 / line 8) .4972 = 49.72%  
