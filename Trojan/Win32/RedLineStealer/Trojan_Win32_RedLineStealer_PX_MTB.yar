
rule Trojan_Win32_RedLineStealer_PX_MTB{
	meta:
		description = "Trojan:Win32/RedLineStealer.PX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {23 cf 8d bc 0c 90 01 04 8a 17 89 4c 24 90 01 01 8a 08 88 0f 8b 4c 24 30 88 10 a1 90 01 04 8d 2c 08 0f b6 07 0f b6 ca 03 c1 99 b9 00 01 00 00 f7 f9 8a 84 14 90 01 04 30 45 00 ff 44 24 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}