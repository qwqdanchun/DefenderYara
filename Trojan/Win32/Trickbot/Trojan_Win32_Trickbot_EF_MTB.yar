
rule Trojan_Win32_Trickbot_EF_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.EF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b c3 33 d2 f7 75 90 01 01 8b 45 90 01 01 8d 0c 1f 88 1c 0e 43 8a 04 02 88 01 90 00 } //01 00 
		$a_02_1 = {8a 1e 8b 7d 90 01 01 0f be 14 30 0f b6 c3 03 fa 33 d2 03 c7 f7 f1 8b 45 90 01 01 8a 0c 10 88 0e 88 1c 10 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Trickbot_EF_MTB_2{
	meta:
		description = "Trojan:Win32/Trickbot.EF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {6b c0 2f 83 c0 47 99 6a 7f 59 f7 f9 88 55 90 01 01 33 c0 40 6b c0 03 0f b6 80 90 01 04 6b c0 2f 83 c0 47 99 6a 7f 59 f7 f9 88 55 90 01 01 33 c0 40 c1 e0 02 0f b6 80 90 01 04 6b c0 2f 83 c0 47 99 6a 7f 59 f7 f9 88 55 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}