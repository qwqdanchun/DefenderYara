
rule Trojan_Win32_Qakbot_PMI_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.PMI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 45 c4 03 45 a4 8b 55 d8 33 02 89 45 a0 8b 45 a0 8b 55 d8 89 02 33 c0 89 45 a4 8b 45 a8 83 c0 04 03 45 a4 89 45 a8 6a 00 e8 90 02 04 8b d8 8b 45 d8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}