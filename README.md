# tick_process
This script takes in a process and calculate all time stats for the process.

TEST IT OUT with prime:

```gcc -o prime prime.c``` compiling the C script  

```chmod +rd getproc.sh``` Give access to execute the file.  

The ```prime``` file is a test script whitch utilizes on average 50% CPU time.  

HOW TO RUN THE SCRIPT

```taskset -c <CPU>./getproc <script> <other-CPU>```  

Use taskset to run the script on another CPU because running this script is CPU heavy so we do not want it to interfeare with the script you want to get the ```/proc/[pid]/stat``` file from.  

CPU/other-CPU = the CPU-number on you want the script to be executed on.  

EXAMPLE

```taskset -c 1 ./getproc.sh prime 0```

The ouput is stored in a TXT FILE with the format ```<PID>-<script>.txt```  
See file ```28201-prime.txt``` = the output of the abow command.

The script feches data evry 50ms (0.05 secs).

A typical line in the file will look like:

```28201 206 0 0 0 207 .9951```  

The last line in the text file will also be printed to the user.

line 1 = Process ID  
line 2 = CPU time spent in user code, measured in clock ticks  
line 3 = CPU time spent in kernel code, measured in clock ticks  
line 4 = Waited-for children's CPU time spent in user code (in clock ticks)  
line 5 = Waited-for children's CPU time spent in kernel code (in clock ticks)  
line 6 = How many ticks the provess have used. Current tick - tick of start(1100 ticks = 11.0 secs)  
line 7 = CPU utilization (line 2-5 / line 8) .4972 = 49.72%  
