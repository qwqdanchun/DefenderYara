
rule Trojan_Win32_Qakbot_FB_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.FB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {2b d8 89 5d a0 8b 45 d8 8b 00 33 45 a0 89 45 a0 6a 00 e8 90 01 04 8b d8 03 5d a0 6a 00 e8 90 01 04 2b d8 8b 45 d8 89 18 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}