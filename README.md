# tick_process
This script takes in a process and calculate all time stats for the process.

First:

```gcc -o prime prime.c``` compiling the C script

```chmod +rd getproc.sh``` Give access to execute the file.

The ```prime``` file is a test script whitch utilizes on average 50% CPU time.



How to run the script:

```./getproc <script> <CPU>```

CPU = the CPU-number on you want the script to be executed on.

```./getproc.sh prime 0```

The ouput is stored in a file with the format ```<PID>-<script>.txt```


The script feches data evry 100ms (0.1 secs).

A typical output of the file:


<PID> <user mode> <kernel mode> <wait childeren user> <wait childeren kernel> <start tick of script> <current tick> <diff tick> <CPU utilization>
```19403 537 10 0 0 9194817 9195917 1100 .4972```
