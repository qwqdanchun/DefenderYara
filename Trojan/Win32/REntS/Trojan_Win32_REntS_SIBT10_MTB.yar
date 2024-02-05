
rule Trojan_Win32_REntS_SIBT10_MTB{
	meta:
		description = "Trojan:Win32/REntS.SIBT10!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {88 01 8b 55 90 01 01 03 55 90 01 01 8a 02 04 90 01 01 8b 4d 90 1b 00 03 4d 90 1b 01 88 01 90 00 } //01 00 
		$a_03_1 = {88 01 8b 55 90 01 01 03 55 90 01 01 0f b6 02 2d 90 01 04 8b 4d 90 1b 00 03 4d 90 1b 01 88 01 90 00 } //01 00 
		$a_03_2 = {88 01 8b 55 90 01 01 03 55 90 01 01 0f b6 02 35 90 01 04 8b 4d 90 1b 00 03 4d 90 1b 01 88 01 90 00 } //01 00 
		$a_03_3 = {8b c8 8d 52 01 c1 e0 90 01 01 03 c1 0f be cb 8a 1a 03 c1 84 db 75 90 01 01 8b 4d 08 3b 45 0c 74 13 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}