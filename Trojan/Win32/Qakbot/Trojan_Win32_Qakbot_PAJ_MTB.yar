
rule Trojan_Win32_Qakbot_PAJ_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.PAJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {99 f7 7d 14 90 13 8b 45 90 01 01 0f b6 04 10 90 13 33 c8 8b 45 90 01 01 90 13 03 45 90 01 01 88 08 90 13 8b 45 90 01 01 90 13 40 89 45 90 01 01 eb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}