
rule Trojan_Win32_ReadlineStealer_GGL_MTB{
	meta:
		description = "Trojan:Win32/ReadlineStealer.GGL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 0a 00 "
		
	strings :
		$a_02_0 = {89 38 31 fe 30 8b 90 01 04 01 e6 20 b1 90 00 } //0a 00 
		$a_02_1 = {11 33 31 58 12 09 56 32 14 76 05 90 01 04 7b 08 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}