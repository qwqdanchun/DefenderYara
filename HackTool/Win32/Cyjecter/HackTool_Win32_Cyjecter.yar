
rule HackTool_Win32_Cyjecter{
	meta:
		description = "HackTool:Win32/Cyjecter,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_00_0 = {6d 6f 64 69 6e 6a 65 63 74 } //01 00  modinject
		$a_00_1 = {57 65 6c 63 68 47 49 46 76 69 65 77 65 72 2e 75 63 41 6e 69 47 49 46 } //01 00  WelchGIFviewer.ucAniGIF
		$a_02_2 = {3a 00 5c 00 4d 00 61 00 69 00 6e 00 43 00 69 00 74 00 5c 00 90 02 40 2e 00 76 00 62 00 70 00 90 00 } //01 00 
		$a_02_3 = {3a 00 5c 00 63 00 69 00 74 00 65 00 72 00 5c 00 90 02 40 2e 00 76 00 62 00 70 00 90 00 } //01 00 
		$a_00_4 = {46 00 61 00 69 00 6c 00 65 00 64 00 20 00 74 00 6f 00 20 00 57 00 72 00 69 00 74 00 65 00 20 00 44 00 4c 00 4c 00 20 00 74 00 6f 00 20 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //00 00  Failed to Write DLL to Process
	condition:
		any of ($a_*)
 
}