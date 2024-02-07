
rule TrojanSpy_Win32_SuspMSEUninstall_A{
	meta:
		description = "TrojanSpy:Win32/SuspMSEUninstall.A,SIGNATURE_TYPE_CMDHSTR_EXT,15 00 15 00 05 00 00 14 00 "
		
	strings :
		$a_00_0 = {32 00 41 00 41 00 33 00 43 00 31 00 33 00 45 00 2d 00 30 00 35 00 33 00 31 00 2d 00 34 00 31 00 42 00 38 00 2d 00 41 00 45 00 34 00 38 00 2d 00 41 00 45 00 32 00 38 00 43 00 39 00 34 00 30 00 41 00 38 00 30 00 39 00 } //01 00  2AA3C13E-0531-41B8-AE48-AE28C940A809
		$a_02_1 = {6d 00 73 00 69 00 65 00 78 00 65 00 63 00 90 02 f0 2d 00 78 00 20 00 90 00 } //01 00 
		$a_02_2 = {6d 00 73 00 69 00 65 00 78 00 65 00 63 00 90 02 f0 2f 00 78 00 20 00 90 00 } //01 00 
		$a_02_3 = {6d 00 73 00 69 00 65 00 78 00 65 00 63 00 90 02 f0 2d 00 75 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 90 00 } //01 00 
		$a_02_4 = {6d 00 73 00 69 00 65 00 78 00 65 00 63 00 90 02 f0 2f 00 75 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}