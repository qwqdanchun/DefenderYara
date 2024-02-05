
rule Trojan_Win32_NtdsExfil_B{
	meta:
		description = "Trojan:Win32/NtdsExfil.B,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 00 6d 00 64 00 20 00 2f 00 63 00 } //01 00 
		$a_00_1 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 } //02 00 
		$a_02_2 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 90 02 10 63 00 72 00 65 00 61 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 90 02 10 66 00 6f 00 72 00 3d 00 43 00 3a 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}