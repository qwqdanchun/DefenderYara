
rule Trojan_Win32_Tiny_EH_MTB{
	meta:
		description = "Trojan:Win32/Tiny.EH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_81_0 = {31 38 35 2e 32 31 35 2e 31 31 33 2e 36 36 } //01 00 
		$a_01_1 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 57 } //01 00 
		$a_01_2 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 57 } //01 00 
		$a_01_3 = {43 72 65 61 74 65 46 69 6c 65 57 } //01 00 
		$a_01_4 = {53 68 65 6c 6c 45 78 65 63 75 74 65 57 } //00 00 
	condition:
		any of ($a_*)
 
}