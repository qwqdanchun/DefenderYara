
rule Backdoor_WinNT_Nuwar_C_sys{
	meta:
		description = "Backdoor:WinNT/Nuwar.C!sys,SIGNATURE_TYPE_PEHSTR_EXT,21 00 21 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {0f 20 c0 50 25 ff ff fe ff 0f 22 c0 } //01 00 
		$a_01_1 = {74 00 63 00 68 00 64 00 6f 00 67 00 2e 00 73 00 79 00 73 00 00 00 00 00 7a 00 63 00 6c 00 69 00 } //01 00 
		$a_01_2 = {0f b7 00 56 33 f6 3d 93 08 00 00 89 75 fc 0f 84 } //01 00 
		$a_01_3 = {57 69 6e 45 78 65 63 00 56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 00 00 73 70 6f 6f 6c 64 72 00 } //01 00 
		$a_01_4 = {65 78 70 6c 6f 72 65 72 00 00 00 00 7a 6c 63 6c } //0a 00 
		$a_01_5 = {50 73 53 65 74 4c 6f 61 64 49 6d 61 67 65 4e 6f 74 69 66 79 52 6f 75 74 69 6e 65 } //0a 00  PsSetLoadImageNotifyRoutine
		$a_01_6 = {5a 77 54 65 72 6d 69 6e 61 74 65 50 72 6f 63 65 73 73 } //0a 00  ZwTerminateProcess
		$a_01_7 = {50 73 43 72 65 61 74 65 53 79 73 74 65 6d 54 68 72 65 61 64 } //00 00  PsCreateSystemThread
	condition:
		any of ($a_*)
 
}