
rule Trojan_Win32_TrickBotCrypt_RT_MTB{
	meta:
		description = "Trojan:Win32/TrickBotCrypt.RT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {89 e2 8b 75 90 01 01 89 30 8b 45 90 01 01 89 01 8b 4d 90 01 01 89 0a c7 45 90 01 01 eb e9 1d dd e9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_TrickBotCrypt_RT_MTB_2{
	meta:
		description = "Trojan:Win32/TrickBotCrypt.RT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 c4 04 8b 85 90 01 04 0f b6 08 0f b6 95 90 01 04 33 ca 8b 85 90 01 04 2b 85 90 01 04 0f b6 d0 81 e2 ff 00 00 00 33 ca 8b 85 90 01 04 88 08 0f b7 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}