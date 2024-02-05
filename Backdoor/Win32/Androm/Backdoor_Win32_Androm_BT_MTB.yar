
rule Backdoor_Win32_Androm_BT_MTB{
	meta:
		description = "Backdoor:Win32/Androm.BT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {67 00 65 00 70 00 6c 00 75 00 78 00 2e 00 74 00 6b 00 2f 00 6c 00 73 00 61 00 73 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {30 00 37 00 39 00 34 00 38 00 35 00 37 00 66 00 66 00 65 00 32 00 34 00 34 00 35 00 30 00 39 00 62 00 36 00 35 00 62 00 38 00 30 00 35 00 65 00 35 00 65 00 32 00 39 00 61 00 63 00 32 00 63 00 35 00 65 00 61 00 33 00 33 00 64 00 33 00 66 00 5f 00 76 00 31 00 2e 00 34 00 } //01 00 
		$a_01_2 = {54 41 53 4b 4b 49 4c 4c 20 2f 69 6d 20 62 72 2e 65 78 65 20 2f 66 } //01 00 
		$a_01_3 = {62 00 6f 00 74 00 25 00 73 00 2f 00 67 00 65 00 74 00 4d 00 65 00 } //01 00 
		$a_01_4 = {53 54 41 52 54 20 62 72 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}