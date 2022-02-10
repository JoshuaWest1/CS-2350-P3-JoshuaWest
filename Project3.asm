;Joshua West & Zachary Hunt

INCLUDE Irvine32.inc

.data


       Arr DWORD 0,1,2,3,4,5,6,7,8,9,10 ;decleares an integer array values 0 through 10

.code

main PROC

       mov esi,0    ;sets esi as 0



       mov edi, (SIZEOF Arr-TYPE Arr) ;sets edi as the size of Arr



       

       mov ecx, LENGTHOF Arr/2 ;uses the LENGTHOF function to assign ecx half of the array 1's length




L1:     ;beginning of loop 1

 

       mov eax, Arr[esi] ; moves the value in Arr[esi] into eax


       xchg eax, Arr[edi] ; lswap values eax and Arr[edi]


       mov Arr[esi], eax ; moves the value from eax into Arr[esi]


       add esi, TYPE Arr ;adds Arr value to esi


       sub edi, TYPE Arr ; subtracts Arr vlaues from edi

       loop L1  ;end of loop1










       mov ecx, LENGTHOF Arr     ;sets ecx as the length of Arr


       mov esi, OFFSET Arr       ;sets esi as the address of Arr

L2:     ;beginning of loop2

       mov eax, [esi]       ;moves the address into eax

       call DumpMem


       add esi, TYPE Arr  ;Next Value

       LOOP L2;End of Loop 2

exit

main ENDP

END main

