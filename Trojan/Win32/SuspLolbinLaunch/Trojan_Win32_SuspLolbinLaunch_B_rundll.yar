
rule Trojan_Win32_SuspLolbinLaunch_B_rundll{
	meta:
		description = "Trojan:Win32/SuspLolbinLaunch.B!rundll,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 90 02 40 6d 00 73 00 68 00 74 00 6d 00 6c 00 90 00 } //fb ff 
		$a_00_1 = {5c 00 66 00 69 00 6c 00 74 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //fb ff  \filter.exe
		$a_00_2 = {74 00 68 00 6f 00 72 00 5c 00 73 00 69 00 67 00 6e 00 61 00 74 00 75 00 72 00 65 00 73 00 } //fb ff  thor\signatures
		$a_00_3 = {2e 00 79 00 6d 00 73 00 2d 00 74 00 65 00 78 00 74 00 66 00 69 00 6c 00 74 00 65 00 72 00 } //00 00  .yms-textfilter
	condition:
		any of ($a_*)
 
}