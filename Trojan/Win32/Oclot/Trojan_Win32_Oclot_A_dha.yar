
rule Trojan_Win32_Oclot_A_dha{
	meta:
		description = "Trojan:Win32/Oclot.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 62 75 67 72 70 74 2e 6c 6f 67 } //01 00  \bugrpt.log
		$a_01_1 = {54 6f 72 63 68 77 6f 6f 64 } //01 00  Torchwood
		$a_01_2 = {62 6c 61 63 6b 6d 6f 6f 6e } //00 00  blackmoon
	condition:
		any of ($a_*)
 
}