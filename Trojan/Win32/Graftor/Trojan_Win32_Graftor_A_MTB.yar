
rule Trojan_Win32_Graftor_A_MTB{
	meta:
		description = "Trojan:Win32/Graftor.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {50 f7 da 1b d2 f7 da } //02 00 
		$a_03_1 = {8b c8 8b 45 90 01 01 99 f7 f9 8d 90 00 } //02 00 
		$a_01_2 = {0f bf c0 33 d8 8d } //00 00 
	condition:
		any of ($a_*)
 
}