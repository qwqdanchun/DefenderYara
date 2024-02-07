
rule Backdoor_BAT_AveMariaRAT_B_MTB{
	meta:
		description = "Backdoor:BAT/AveMariaRAT.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {0a 13 07 09 11 07 d2 6e 1e 11 06 5a 1f 3f 5f 62 60 0d 11 06 17 58 13 06 11 06 1e 32 de 09 69 8d 32 00 00 01 25 17 73 10 00 00 0a 13 04 06 6f 11 00 00 0a 1f 0d 6a 59 } //01 00 
		$a_01_1 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //01 00  VirtualAllocEx
		$a_01_2 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //01 00  CreateRemoteThread
		$a_01_3 = {57 6f 77 36 34 53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00  Wow64SetThreadContext
		$a_01_4 = {4e 74 52 65 73 75 6d 65 54 68 72 65 61 64 } //01 00  NtResumeThread
		$a_01_5 = {5a 77 55 6e 6d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //01 00  ZwUnmapViewOfSection
		$a_01_6 = {4e 74 57 72 69 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 } //00 00  NtWriteVirtualMemory
	condition:
		any of ($a_*)
 
}