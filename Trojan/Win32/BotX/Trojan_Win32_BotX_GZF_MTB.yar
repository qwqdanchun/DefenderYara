
rule Trojan_Win32_BotX_GZF_MTB{
	meta:
		description = "Trojan:Win32/BotX.GZF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8b d7 03 c7 d3 ea 89 45 90 01 01 8b 45 90 01 01 c7 05 90 01 04 ee 3d ea f4 03 55 90 01 01 89 45 90 01 01 89 5d 90 01 01 8b 45 90 01 01 01 45 90 01 01 8b 45 90 01 01 31 45 90 01 01 8b 45 90 01 01 33 c2 2b f0 8b c6 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}