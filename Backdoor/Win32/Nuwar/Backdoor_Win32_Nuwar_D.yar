
rule Backdoor_Win32_Nuwar_D{
	meta:
		description = "Backdoor:Win32/Nuwar.D,SIGNATURE_TYPE_PEHSTR,18 00 18 00 05 00 00 "
		
	strings :
		$a_01_0 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 6d 00 73 00 54 00 43 00 50 00 55 00 44 00 50 00 00 00 00 00 5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 6d 00 73 00 54 00 43 00 50 00 55 00 44 00 50 00 } //10
		$a_01_1 = {70 72 6f 6a 65 63 74 73 5c 72 6f 6f 74 6b 69 74 5c 44 65 62 75 67 5c 69 33 38 36 5c 6d 73 54 43 50 55 44 50 2e 70 64 62 } //10 projects\rootkit\Debug\i386\msTCPUDP.pdb
		$a_01_2 = {5a 77 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e 20 66 61 69 6c 65 64 21 20 75 6c 4e 65 65 64 65 64 53 69 7a 65 20 3d 20 25 75 6c 2c 20 4e 74 53 74 61 74 75 73 20 3d 20 25 75 2e } //3 ZwQuerySystemInformation failed! ulNeededSize = %ul, NtStatus = %u.
		$a_01_3 = {6b 00 6c 00 69 00 66 00 2e 00 73 00 79 00 73 00 00 00 00 00 61 00 76 00 70 00 2e 00 65 00 78 00 65 00 00 00 77 00 61 00 74 00 63 00 68 00 64 00 6f 00 67 00 2e 00 73 00 79 00 73 00 00 00 00 00 77 00 73 00 63 00 6e 00 74 00 66 00 79 00 2e 00 65 00 78 00 65 00 00 00 76 00 73 00 64 00 61 00 74 00 61 00 6e 00 74 00 2e 00 73 00 79 00 73 00 00 00 00 00 7a 00 63 00 6c 00 69 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 00 00 62 00 63 00 66 00 69 00 6c 00 74 00 65 00 72 00 2e 00 73 00 79 00 73 00 } //1
		$a_01_4 = {67 00 63 00 61 00 73 00 73 00 65 00 72 00 76 00 2e 00 65 00 78 00 65 00 00 00 00 00 69 00 63 00 6d 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 00 00 69 00 6e 00 65 00 74 00 75 00 70 00 64 00 2e 00 65 00 78 00 65 00 00 00 6e 00 6f 00 64 00 33 00 32 00 6b 00 72 00 6e 00 2e 00 65 00 78 00 65 00 00 00 00 00 6e 00 6f 00 64 00 33 00 32 00 72 00 61 00 2e 00 65 00 78 00 65 00 00 00 70 00 61 00 76 00 66 00 6e 00 73 00 76 00 72 00 2e 00 65 00 78 00 65 00 00 00 00 00 61 00 76 00 67 00 2e 00 65 00 78 00 65 00 00 00 61 00 76 00 67 00 73 00 63 00 61 00 6e 00 2e 00 65 00 78 00 65 00 } //1
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*3+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=24
 
}