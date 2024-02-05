
rule Trojan_Win32_REntS_SIBT17_MTB{
	meta:
		description = "Trojan:Win32/REntS.SIBT17!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {88 14 08 8b 45 90 01 01 8b 4d 90 01 01 0f b6 34 08 89 f3 83 f3 90 01 01 88 1c 08 90 00 } //01 00 
		$a_03_1 = {88 1c 08 8b 45 90 01 01 8b 4d 90 01 01 0f b6 34 08 89 f2 83 ea 90 01 01 88 14 08 90 00 } //01 00 
		$a_03_2 = {88 14 08 8b 45 90 01 01 8b 4d 90 01 01 0f b6 34 08 89 f2 81 c2 90 01 04 88 14 08 90 00 } //01 00 
		$a_03_3 = {8b 45 08 80 38 00 0f 84 90 01 04 8b 45 90 01 01 c1 e0 05 03 45 90 1b 01 8b 4d 08 0f be 09 01 c8 89 45 90 1b 01 8b 45 08 83 c0 01 89 45 08 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}