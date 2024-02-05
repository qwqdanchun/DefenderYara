
rule Trojan_Win32_VB_OR{
	meta:
		description = "Trojan:Win32/VB.OR,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 20 00 2f 00 65 00 00 00 } //01 00 
		$a_00_1 = {65 00 2e 00 65 00 00 00 1a 00 00 00 53 00 68 00 65 00 6c 00 6c 00 5f 00 74 00 72 00 61 00 79 00 77 00 6e 00 64 00 00 00 } //01 00 
		$a_01_2 = {c7 45 fc 07 00 00 00 c7 45 ac 6e 00 00 00 c7 45 fc 08 00 00 00 c7 45 a8 12 00 00 00 c7 45 fc 09 00 00 00 c7 45 d4 22 f3 04 00 c7 45 fc 0a 00 00 00 c7 45 c8 23 f3 04 00 } //00 00 
	condition:
		any of ($a_*)
 
}