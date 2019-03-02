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
See file ```32555-prime.txt``` = the output of the abow command.

The script feches data evry 100ms (0.1 secs).

A typical line in the file will look like:

```32555 543 9 0 0 1114 0.4955```  

The last line in the text file will also be printed to the user.

line 1 = Process ID  
line 2 = CPU time spent in user code, measured in clock ticks  
line 3 = CPU time spent in kernel code, measured in clock ticks  
line 4 = Waited-for children's CPU time spent in user code (in clock ticks)  
line 5 = Waited-for children's CPU time spent in kernel code (in clock ticks)  
line 6 = How many ticks the provess have used. Current tick - tick of start(1100 ticks = 11.0 secs)  
line 7 = CPU utilization (line 2-5 / line 8) .4972 = 49.72%  
