
rule Trojan_Win32_Chepdu_W{
	meta:
		description = "Trojan:Win32/Chepdu.W,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {eb 6d 8b 04 90 02 05 68 80 01 00 00 50 6a 00 e8 90 01 02 00 00 90 00 } //01 00 
		$a_00_1 = {be 80 d1 f0 08 } //00 00 
	condition:
		any of ($a_*)
 
}