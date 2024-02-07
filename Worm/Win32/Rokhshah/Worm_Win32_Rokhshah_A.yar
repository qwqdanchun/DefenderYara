
rule Worm_Win32_Rokhshah_A{
	meta:
		description = "Worm:Win32/Rokhshah.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 05 00 "
		
	strings :
		$a_02_0 = {4e 65 74 77 6f 72 6b 20 53 65 72 76 69 63 65 73 00 00 00 00 53 6f 66 74 77 61 72 65 5c 53 65 72 76 69 63 65 00 00 00 00 56 65 72 73 69 6f 6e 00 5c 74 6d 70 2e 65 78 65 00 00 00 00 74 6d 70 2e 65 78 65 90 01 05 53 68 61 68 72 6f 6b 68 2e 65 78 65 00 00 00 00 61 75 74 6f 72 75 6e 2e 65 78 65 90 00 } //03 00 
		$a_00_1 = {41 64 6d 69 6e 69 73 74 72 61 74 6f 72 5c 44 65 73 6b 74 6f 70 5c 6d 79 50 65 6e 44 72 69 76 65 44 65 74 65 63 74 5c 72 65 6c 65 61 73 65 5c 6d 79 50 65 6e 44 72 69 76 65 44 65 74 65 63 74 2e 70 64 62 } //01 00  Administrator\Desktop\myPenDriveDetect\release\myPenDriveDetect.pdb
		$a_00_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 41 64 76 61 6e 63 65 64 5c 46 6f 6c 64 65 72 5c 48 69 64 64 65 6e 5c 53 48 4f 57 41 4c 4c } //01 00  Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL
		$a_00_3 = {66 3a 5c 2a 2e 65 78 65 00 00 00 00 25 63 3a 5c 61 75 74 6f 72 75 6e 2e 65 78 65 00 25 63 3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 00 25 63 3a 5c 2a 2e 65 78 65 } //01 00 
		$a_00_4 = {44 69 73 61 62 6c 65 54 61 73 6b 4d 67 72 00 00 61 75 74 6f 72 75 6e 2e 69 6e 66 00 53 79 73 74 65 6d 52 6f 6f 74 } //00 00 
	condition:
		any of ($a_*)
 
}