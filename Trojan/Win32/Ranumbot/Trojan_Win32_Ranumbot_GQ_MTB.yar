
rule Trojan_Win32_Ranumbot_GQ_MTB{
	meta:
		description = "Trojan:Win32/Ranumbot.GQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 0a 00 "
		
	strings :
		$a_02_0 = {c1 e9 05 89 90 01 01 24 90 01 01 89 90 01 01 24 90 01 01 8b 90 01 01 24 90 01 04 01 44 24 90 01 01 8d 14 2e 31 54 24 90 01 01 81 3d 90 01 06 00 00 c7 05 90 01 08 90 18 8b 90 01 01 24 90 01 01 31 90 01 01 24 90 01 01 83 3d 90 01 05 90 18 2b 90 02 04 c7 90 00 } //0a 00 
		$a_02_1 = {c1 e8 05 89 90 01 01 24 90 01 01 89 90 01 01 24 90 01 01 8b 90 01 01 24 90 01 04 01 44 24 90 01 01 8d 14 2e 31 54 24 90 01 01 81 3d 90 01 06 00 00 c7 05 90 01 08 90 18 8b 90 01 01 24 90 01 01 31 90 01 01 24 90 01 01 83 3d 90 01 05 90 18 2b 90 02 04 c7 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}