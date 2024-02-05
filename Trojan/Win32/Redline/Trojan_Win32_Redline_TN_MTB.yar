
rule Trojan_Win32_Redline_TN_MTB{
	meta:
		description = "Trojan:Win32/Redline.TN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {31 c0 29 c8 88 45 90 01 01 8b 4d 90 01 01 0f b6 45 90 01 01 31 c8 88 45 90 01 01 0f b6 45 90 01 01 2d 90 01 04 88 45 90 01 01 8a 4d 90 01 01 8b 45 90 01 01 88 4c 05 90 01 01 8b 45 90 01 01 83 c0 90 01 01 89 45 90 01 01 e9 90 00 } //01 00 
		$a_03_1 = {83 f0 4b 88 45 90 01 01 8b 4d 90 01 01 0f b6 45 90 01 01 29 c8 88 45 90 01 01 0f b6 45 90 01 01 83 f0 90 01 01 88 45 90 01 01 8b 4d 90 01 01 0f b6 45 90 01 01 29 c8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}