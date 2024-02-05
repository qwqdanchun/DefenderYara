
rule Trojan_Win32_Qakbot_MKE_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.MKE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 4a 18 2b 88 90 01 04 8b 55 90 01 01 89 4a 90 01 01 8b 45 90 01 01 8b 88 90 01 04 8b 55 90 01 01 8b 45 90 01 01 8b 0c 91 33 88 90 01 04 8b 55 90 01 01 8b 82 90 00 } //01 00 
		$a_03_1 = {b8 04 00 00 00 c1 e0 90 01 01 8b 4d 90 01 01 8b 55 90 01 01 8b 84 01 90 01 04 33 42 90 01 01 05 90 01 04 8b 4d 90 01 01 8b 51 90 01 01 2b d0 8b 45 90 01 01 89 50 90 01 01 8b 4d 90 01 01 8b 51 90 01 01 83 ea 90 01 01 8b 45 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}