
rule Trojan_Win32_Qbot_XC_MTB{
	meta:
		description = "Trojan:Win32/Qbot.XC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {89 30 68 03 5f 00 00 ff 15 90 01 04 8b f0 68 90 01 04 ff 15 90 01 04 8d 8c 06 90 01 04 8b 55 08 8b 02 2b c1 8b 4d 08 89 01 5e 8b e5 5d c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}