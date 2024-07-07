
rule Backdoor_Win32_Sanjicom_sys{
	meta:
		description = "Backdoor:Win32/Sanjicom!sys,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 09 00 00 "
		
	strings :
		$a_01_0 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 6d 00 73 00 76 00 6d 00 6a 00 65 00 65 00 74 00 5c 00 } //1 \SystemRoot\System32\msvmjeet\
		$a_01_1 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 6e 00 78 00 62 00 6a 00 65 00 65 00 74 00 5c 00 } //1 \SystemRoot\System32\nxbjeet\
		$a_01_2 = {25 73 2a 25 75 2a 25 49 36 34 64 2a 25 75 7c 00 30 00 00 00 6e 64 69 73 2e 73 79 73 } //2
		$a_01_3 = {5c 00 52 00 45 00 47 00 49 00 53 00 54 00 52 00 59 00 5c 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 52 00 44 00 50 00 44 00 72 00 76 00 } //1 \REGISTRY\MACHINE\SYSTEM\CurrentControlSet\Services\RDPDrv
		$a_01_4 = {5c 00 52 00 45 00 47 00 49 00 53 00 54 00 52 00 59 00 5c 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 4e 00 58 00 42 00 44 00 72 00 76 00 } //1 \REGISTRY\MACHINE\SYSTEM\CurrentControlSet\Services\NXBDrv
		$a_01_5 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 72 00 64 00 70 00 64 00 72 00 76 00 2e 00 73 00 79 00 73 00 } //1 \SystemRoot\System32\rdpdrv.sys
		$a_01_6 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 6e 00 78 00 62 00 64 00 72 00 76 00 2e 00 73 00 79 00 73 00 } //1 \SystemRoot\System32\nxbdrv.sys
		$a_01_7 = {5c 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 5c 00 7b 00 41 00 31 00 45 00 37 00 37 00 38 00 34 00 31 00 2d 00 36 00 35 00 33 00 41 00 2d 00 34 00 33 00 31 00 39 00 2d 00 38 00 38 00 46 00 45 00 2d 00 37 00 44 00 34 00 43 00 31 00 41 00 33 00 46 00 36 00 36 00 36 00 41 00 7d 00 } //4 \Security\{A1E77841-653A-4319-88FE-7D4C1A3F666A}
		$a_01_8 = {5c 00 52 00 45 00 47 00 49 00 53 00 54 00 52 00 59 00 5c 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5c 00 53 00 65 00 73 00 73 00 69 00 6f 00 6e 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 5c 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 6d 00 65 00 6e 00 74 00 } //1 \REGISTRY\MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*4+(#a_01_8  & 1)*1) >=10
 
}