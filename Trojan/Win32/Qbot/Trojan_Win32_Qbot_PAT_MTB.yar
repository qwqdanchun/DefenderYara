
rule Trojan_Win32_Qbot_PAT_MTB{
	meta:
		description = "Trojan:Win32/Qbot.PAT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {03 d8 8b 45 d8 33 18 89 5d 90 01 01 68 90 01 04 e8 90 01 04 8b d8 03 5d a0 68 90 01 04 e8 90 01 04 03 d8 8b 45 d8 89 18 8b 45 a8 83 c0 04 89 45 a8 33 c0 89 45 a4 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}