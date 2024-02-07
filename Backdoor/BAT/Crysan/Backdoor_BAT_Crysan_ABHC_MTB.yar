
rule Backdoor_BAT_Crysan_ABHC_MTB{
	meta:
		description = "Backdoor:BAT/Crysan.ABHC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {0a 06 0b 16 8d 90 01 03 01 0c 07 7e 90 01 03 04 25 2d 17 26 7e 90 01 03 04 fe 90 01 04 06 73 90 01 03 0a 25 80 90 01 03 04 28 90 01 03 2b 28 90 01 03 2b 0c d0 90 01 03 01 28 90 01 03 0a 28 90 01 03 0a 08 6f 90 01 03 0a 6f 90 01 03 0a 28 90 01 03 0a 0d 09 14 6f 90 01 03 0a 26 2a 90 00 } //01 00 
		$a_01_1 = {43 00 72 00 65 00 61 00 74 00 65 00 49 00 6e 00 73 00 74 00 61 00 6e 00 63 00 65 00 } //01 00  CreateInstance
		$a_01_2 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 4d 00 65 00 6d 00 62 00 65 00 72 00 } //01 00  InvokeMember
		$a_01_3 = {43 00 68 00 65 00 63 00 6b 00 52 00 65 00 6d 00 6f 00 74 00 65 00 44 00 65 00 62 00 75 00 67 00 67 00 65 00 72 00 50 00 72 00 65 00 73 00 65 00 6e 00 74 00 } //00 00  CheckRemoteDebuggerPresent
	condition:
		any of ($a_*)
 
}