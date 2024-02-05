
rule Trojan_Win32_Fareit_RTH_MTB{
	meta:
		description = "Trojan:Win32/Fareit.RTH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 c0 89 45 90 01 01 8b 45 90 01 01 89 45 90 01 01 8b 45 90 01 01 33 d2 52 50 8b 45 90 01 01 8b 40 90 01 01 99 03 04 24 13 54 24 90 01 01 83 c4 08 90 00 } //01 00 
		$a_03_1 = {8b 07 8b 00 25 ff ff 00 00 50 56 e8 90 01 04 8b 17 89 02 eb 90 01 01 8b 45 90 01 01 83 c0 02 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}