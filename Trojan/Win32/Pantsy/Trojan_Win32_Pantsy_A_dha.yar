
rule Trojan_Win32_Pantsy_A_dha{
	meta:
		description = "Trojan:Win32/Pantsy.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 73 6d 32 70 65 2e 64 6c 6c } //01 00 
		$a_01_1 = {6e 74 64 6c 6c 2e 64 6c 6c 00 4c 64 72 4c 6f 61 64 44 6c 6c } //00 00 
	condition:
		any of ($a_*)
 
}