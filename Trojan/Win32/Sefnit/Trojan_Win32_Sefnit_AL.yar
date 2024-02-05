
rule Trojan_Win32_Sefnit_AL{
	meta:
		description = "Trojan:Win32/Sefnit.AL,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 fa 7b 0f 85 90 09 0e 00 90 02 0b 0f be 11 90 00 } //01 00 
		$a_01_1 = {83 bc 8a 0c 03 00 00 00 } //01 00 
		$a_01_2 = {c7 82 24 06 00 00 } //01 00 
		$a_01_3 = {c7 81 24 06 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}