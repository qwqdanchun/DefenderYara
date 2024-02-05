
rule Trojan_Win32_Trickbot_PVJ_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.PVJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_02_0 = {55 8b ec b8 90 01 04 e8 90 01 04 53 56 50 53 90 00 } //01 00 
		$a_02_1 = {50 ff d6 89 45 fc 50 53 90 09 18 00 58 5b 68 90 01 04 68 90 01 04 ff 15 90 01 04 8b 35 90 00 } //02 00 
		$a_02_2 = {55 8b ec b8 90 01 04 e8 90 01 04 53 c7 45 dc 90 01 04 c7 45 d4 00 00 00 00 c7 45 d8 90 01 04 c7 45 f4 00 00 00 00 c7 45 f0 00 00 00 00 50 53 90 00 } //01 00 
		$a_02_3 = {58 5b 6a 04 68 00 30 00 00 68 00 e1 f5 05 6a 00 ff 15 90 01 04 89 45 f0 50 53 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}