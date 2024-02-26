
rule Trojan_Win32_Vidar_PBE_MTB{
	meta:
		description = "Trojan:Win32/Vidar.PBE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 55 f4 8a 0a 0f b6 d9 8d 84 85 90 01 04 39 18 75 08 8b 45 fc 88 0c 10 eb 0a 90 01 02 32 c1 8b 4d fc 88 04 11 ff 45 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}