
rule Trojan_Win32_Zenpak_CA_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.CA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {30 04 3e 89 75 90 01 01 b8 01 00 00 00 83 f0 04 83 6d 90 01 01 01 8b 75 90 01 01 85 f6 7d e2 90 00 } //02 00 
		$a_03_1 = {3d 32 fe 50 00 75 0c 8b 0d 90 02 04 89 0d 90 02 04 40 3d 32 89 93 00 7c e5 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}