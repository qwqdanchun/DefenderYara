
rule Trojan_Win32_MysticStealer_CCHC_MTB{
	meta:
		description = "Trojan:Win32/MysticStealer.CCHC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {fd ff ff 0f b6 85 90 01 01 fd ff ff 8b 4d 08 03 8d 90 01 01 fd ff ff 0f b6 11 33 d0 8b 45 08 03 85 90 01 01 fd ff ff 88 10 eb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}