
rule Trojan_Win32_SuspMasqueradedTool_B{
	meta:
		description = "Trojan:Win32/SuspMasqueradedTool.B,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {2e 00 65 00 78 00 65 00 } //ff ff  .exe
		$a_00_1 = {61 00 76 00 6f 00 69 00 64 00 5f 00 64 00 75 00 70 00 6c 00 69 00 63 00 61 00 74 00 65 00 2d 00 7b 00 31 00 61 00 30 00 38 00 38 00 38 00 36 00 35 00 2d 00 65 00 36 00 63 00 33 00 2d 00 34 00 38 00 65 00 31 00 2d 00 62 00 64 00 32 00 35 00 2d 00 32 00 31 00 36 00 34 00 39 00 64 00 62 00 32 00 30 00 32 00 36 00 39 00 7d 00 } //00 00  avoid_duplicate-{1a088865-e6c3-48e1-bd25-21649db20269}
	condition:
		any of ($a_*)
 
}