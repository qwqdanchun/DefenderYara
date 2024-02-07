
rule Trojan_Win32_SuspShadowCreate_B{
	meta:
		description = "Trojan:Win32/SuspShadowCreate.B,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 04 00 00 02 00 "
		
	strings :
		$a_00_0 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 20 00 2f 00 66 00 6f 00 72 00 3d 00 } //02 00  vssadmin.exe create shadow /for=
		$a_00_1 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 20 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 20 00 2f 00 66 00 6f 00 72 00 3d 00 } //02 00  vssadmin create shadow /for=
		$a_00_2 = {64 00 69 00 73 00 6b 00 73 00 68 00 61 00 64 00 6f 00 77 00 20 00 63 00 72 00 65 00 61 00 74 00 65 00 } //02 00  diskshadow create
		$a_00_3 = {64 00 69 00 73 00 6b 00 73 00 68 00 61 00 64 00 6f 00 77 00 2e 00 65 00 78 00 65 00 20 00 63 00 72 00 65 00 61 00 74 00 65 00 } //00 00  diskshadow.exe create
	condition:
		any of ($a_*)
 
}