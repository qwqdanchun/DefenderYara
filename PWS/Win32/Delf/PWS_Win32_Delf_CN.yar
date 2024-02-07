
rule PWS_Win32_Delf_CN{
	meta:
		description = "PWS:Win32/Delf.CN,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {57 69 6e 64 6f 77 73 20 4c 69 76 65 20 48 6f 74 6d 61 69 6c 20 2d 20 57 69 6e 64 6f 77 73 20 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 } //01 00  Windows Live Hotmail - Windows Internet Explorer
		$a_00_1 = {45 6e 74 72 65 20 6e 6f 20 59 61 68 6f 6f 21 20 2d 20 57 69 6e 64 6f 77 73 20 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 } //01 00  Entre no Yahoo! - Windows Internet Explorer
		$a_00_2 = {47 6d 61 69 6c 3a 20 45 6d 61 69 6c 20 64 6f 20 47 6f 6f 67 6c 65 20 2d 20 57 69 6e 64 6f 77 73 20 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 } //01 00  Gmail: Email do Google - Windows Internet Explorer
		$a_02_3 = {5c 67 6d 2e 74 78 74 90 01 05 68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 67 00 6f 00 6f 00 67 00 6c 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 63 00 63 00 6f 00 75 00 6e 00 74 00 73 00 2f 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 4c 00 6f 00 67 00 69 00 6e 00 3f 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 3d 00 6d 00 61 00 69 00 6c 00 26 00 70 00 61 00 73 00 73 00 69 00 76 00 65 00 90 01 0a 26 50 61 73 73 77 64 3d 90 01 0c 26 45 6d 61 69 6c 3d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}