
rule Trojan_Win32_Hokobot_C_dll{
	meta:
		description = "Trojan:Win32/Hokobot.C.dll!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 65 72 76 65 72 68 65 6c 70 2e 64 6c 6c } //01 00 
		$a_01_1 = {4f 70 65 6e 43 6c 69 70 46 6e } //01 00 
		$a_01_2 = {53 65 74 57 69 6e 48 6f 4b } //01 00 
		$a_01_3 = {4f 70 65 6e 43 6c 69 70 62 6f 61 72 64 } //01 00 
		$a_01_4 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //00 00 
	condition:
		any of ($a_*)
 
}