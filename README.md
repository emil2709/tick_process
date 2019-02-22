# tick_process
This script takes in a process and calculate all time stats for the process.

First:

```gcc -o prime prime.c``` compiling the C script
```chmod +rd getproc.sh``` Give access to execute the file.

The ```prime``` file is a test script whitch utilizes on average 50% CPU time.


Run the script:

```./getproc <script> <CPU>```

CPU = the number on the CPU you want the script to be executed on.

```./getproc.sh prime 0```

The ouput is stored in a file with the format ```<PID>-<script>.txt```

