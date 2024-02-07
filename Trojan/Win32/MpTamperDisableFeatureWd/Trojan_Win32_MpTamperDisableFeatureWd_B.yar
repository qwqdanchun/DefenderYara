
rule Trojan_Win32_MpTamperDisableFeatureWd_B{
	meta:
		description = "Trojan:Win32/MpTamperDisableFeatureWd.B,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {75 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 2d 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 66 00 65 00 61 00 74 00 75 00 72 00 65 00 90 02 20 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2d 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 90 00 } //01 00 
		$a_02_1 = {72 00 65 00 6d 00 6f 00 76 00 65 00 2d 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 66 00 65 00 61 00 74 00 75 00 72 00 65 00 90 02 20 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2d 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_MpTamperDisableFeatureWd_B_2{
	meta:
		description = "Trojan:Win32/MpTamperDisableFeatureWd.B,SIGNATURE_TYPE_CMDHSTR_EXT,15 00 15 00 06 00 00 0a 00 "
		
	strings :
		$a_00_0 = {64 00 69 00 73 00 6d 00 } //0a 00  dism
		$a_00_1 = {77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2d 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 } //f6 ff  windows-defender
		$a_00_2 = {77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2d 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 2d 00 61 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 67 00 75 00 61 00 72 00 64 00 } //ec ff  windows-defender-applicationguard
		$a_00_3 = {2f 00 69 00 6d 00 61 00 67 00 65 00 3a 00 } //01 00  /image:
		$a_00_4 = {2f 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 2d 00 66 00 65 00 61 00 74 00 75 00 72 00 65 00 } //01 00  /disable-feature
		$a_00_5 = {2f 00 72 00 65 00 6d 00 6f 00 76 00 65 00 } //00 00  /remove
	condition:
		any of ($a_*)
 
}