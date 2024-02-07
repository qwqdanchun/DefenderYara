
rule Trojan_Win32_Sefnit_CH{
	meta:
		description = "Trojan:Win32/Sefnit.CH,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {74 1f 48 74 15 2d fe 00 00 00 74 07 b8 90 01 04 5d c3 b8 90 00 } //02 00 
		$a_03_1 = {74 24 ff c9 74 18 81 f9 fe 00 00 00 74 08 48 8d 05 90 01 04 c3 48 8d 05 90 00 } //01 00 
		$a_01_2 = {63 64 61 2e 67 7a 00 } //01 00 
		$a_01_3 = {2d 2d 63 75 64 61 00 } //01 00 
		$a_01_4 = {4c 6f 63 61 6c 5c 5f 5f 72 75 6e 6e 65 72 5f 5f 00 } //01 00 
		$a_01_5 = {2e 3f 41 56 67 7a 5f 66 69 6c 65 5f 73 74 6f 72 61 67 65 40 40 00 } //00 00  㼮噁穧晟汩彥瑳牯条䁥@
	condition:
		any of ($a_*)
 
}