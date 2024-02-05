
rule Trojan_Win32_Qbot_AH_MTB{
	meta:
		description = "Trojan:Win32/Qbot.AH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 58 53 38 38 00 } //01 00 
		$a_01_1 = {00 52 65 5f 6c 61 79 6f 75 74 43 68 61 72 73 5f 35 37 00 } //01 00 
		$a_01_2 = {00 52 65 5f 67 65 74 47 6c 79 70 68 73 5f 35 37 00 } //01 00 
		$a_01_3 = {00 52 65 5f 67 65 74 43 68 61 72 49 6e 64 69 63 65 73 5f 35 37 00 } //01 00 
		$a_01_4 = {00 52 65 5f 63 72 65 61 74 65 5f 35 37 00 } //00 00 
	condition:
		any of ($a_*)
 
}