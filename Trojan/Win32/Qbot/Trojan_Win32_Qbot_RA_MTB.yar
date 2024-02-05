
rule Trojan_Win32_Qbot_RA_MTB{
	meta:
		description = "Trojan:Win32/Qbot.RA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_02_0 = {83 c4 04 8b 0d 90 01 04 89 0d 90 01 04 8b 15 90 01 04 a1 90 01 04 8d 4c 10 90 01 01 2b 0d 90 01 04 03 0d 90 01 04 89 0d 90 01 04 8b 15 90 01 04 83 ea 03 89 15 90 01 04 a1 90 01 04 2b 05 90 01 04 a3 90 01 04 8b 0d 90 01 04 03 0d 90 01 04 89 0d 90 01 04 ba 87 8a 00 00 85 d2 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Qbot_RA_MTB_2{
	meta:
		description = "Trojan:Win32/Qbot.RA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {83 c4 04 a1 90 01 04 a3 90 01 04 8b 0d 90 01 04 8b 15 90 01 04 8d 44 0a 90 01 01 2b 85 90 01 04 03 05 90 01 04 a3 90 01 04 8b 0d 90 00 } //01 00 
		$a_02_1 = {83 e9 15 89 0d 90 01 04 eb 90 01 01 8b 15 90 01 04 03 95 90 01 04 03 15 90 01 04 89 15 90 01 04 a1 90 01 04 2b 05 90 01 04 a3 90 01 04 b9 01 00 00 00 85 c9 0f 85 90 00 } //02 00 
		$a_02_2 = {83 c4 04 8b 0d 90 01 04 89 0d 90 01 04 8b 15 90 01 04 a1 90 01 04 8d 4c 10 90 01 01 2b 4d 90 01 01 03 0d 90 01 04 89 0d 90 01 04 8b 15 90 01 04 83 ea 15 89 15 90 01 04 a1 90 01 04 03 45 90 01 01 03 05 90 01 04 a3 90 01 04 8b 0d 90 01 04 2b 0d 90 01 04 89 0d 90 01 04 ba 01 00 00 00 85 d2 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}