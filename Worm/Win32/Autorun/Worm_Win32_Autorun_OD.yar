
rule Worm_Win32_Autorun_OD{
	meta:
		description = "Worm:Win32/Autorun.OD,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 4c 00 61 00 70 00 54 00 72 00 69 00 6e 00 68 00 5f 00 56 00 42 00 36 00 20 00 43 00 2b 00 2b 00 5c 00 63 00 68 00 69 00 70 00 20 00 56 00 42 00 36 00 5c 00 43 00 68 00 61 00 6e 00 67 00 65 00 57 00 61 00 6c 00 6c 00 50 00 61 00 70 00 65 00 72 00 5c 00 43 00 68 00 61 00 6e 00 67 00 65 00 20 00 6f 00 6e 00 20 00 4c 00 61 00 6e 00 5c 00 63 00 68 00 69 00 70 00 5f 00 61 00 6e 00 64 00 5f 00 79 00 6f 00 75 00 2e 00 76 00 62 00 70 00 } //01 00  \LapTrinh_VB6 C++\chip VB6\ChangeWallPaper\Change on Lan\chip_and_you.vbp
		$a_01_1 = {73 68 65 6c 6c 5c 41 75 74 6f 5c 63 6f 6d 6d 61 6e 64 3d 63 68 69 70 5f 61 6e 64 5f 79 6f 75 2e 65 78 65 } //01 00  shell\Auto\command=chip_and_you.exe
		$a_01_2 = {54 00 68 00 61 00 79 00 20 00 64 00 6f 00 69 00 20 00 67 00 69 00 61 00 20 00 74 00 72 00 69 00 20 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 20 00 6b 00 68 00 6f 00 6e 00 67 00 20 00 74 00 68 00 61 00 6e 00 68 00 20 00 63 00 6f 00 6e 00 67 00 2e 00 } //00 00  Thay doi gia tri Registry khong thanh cong.
	condition:
		any of ($a_*)
 
}