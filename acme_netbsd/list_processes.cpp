#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/sysctl.h>
#include <errno.h>
#include <string.h>


long long * netbsd_list_processes(int & c)
{
	c = 0;
    int mib[4] = { CTL_KERN, KERN_PROC, KERN_PROC_ALL, 0 };  // mib for all processes
    size_t len;
    kinfo_proc2 *procs;
    int nprocs, i;

    // First, get the size of the data
    if (sysctl(mib, 4, NULL, &len, NULL, 0) == -1) {
        fprintf(stderr, "sysctl");
        return nullptr;
    }

    // Allocate space for the process list
    procs = (kinfo_proc2 *)malloc(len);
    if (procs == NULL) {
        fprintf(stderr,  "malloc");
        return nullptr;
    }


    // Get the process list
    if (sysctl(mib, 4, procs, &len, NULL, 0) == -1) {
        fprintf(stderr, "sysctl");
        free(procs);
        return nullptr;
    }

    nprocs = len / sizeof(kinfo_proc2);  // number of processes
    
        // Allocate space for the process list
    auto pp = (long long *)malloc(nprocs);
    if (pp == NULL) {
        fprintf(stderr,  "malloc(2)");
        free(procs);
        return nullptr;
    }
    
    

    // Print process information
    for (i = 0; i < nprocs; i++) {
		bool bFound = false;
		
		long long llPid = procs[i].p_pid;
		for(int j = 0; j < c; j++)
		{
			
			if(pp[j] == llPid)
			{
				
				bFound = true;
				break;
				
			}
			
		}
		
		if(!bFound)
		{
			pp[c++] = llPid;
			printf("PID: %lld, Name: %s\n", llPid, procs[i].p_comm);
			
		}
    }

    free(procs);
    return pp;
}
