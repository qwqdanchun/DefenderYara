
rule Trojan_Win32_Qakbot_NZA_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.NZA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 55 a0 2b d0 8b 45 d8 33 10 89 55 a0 8b 45 d8 8b 55 a0 89 10 8b 45 a8 83 c0 04 89 45 a8 33 c0 89 45 a4 8b 45 d8 83 c0 04 03 45 a4 89 45 d8 8b 45 a8 3b 45 cc 72 } //00 00 
	condition:
		any of ($a_*)
 
}