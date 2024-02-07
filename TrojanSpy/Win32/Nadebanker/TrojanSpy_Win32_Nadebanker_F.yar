
rule TrojanSpy_Win32_Nadebanker_F{
	meta:
		description = "TrojanSpy:Win32/Nadebanker.F,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 09 00 00 03 00 "
		
	strings :
		$a_01_0 = {10 76 0d 80 39 68 75 08 8d 71 01 39 1e 0f 94 c2 85 d2 75 0b 83 c0 04 8b 08 85 c9 75 d1 eb 16 } //03 00 
		$a_01_1 = {03 c7 83 e6 0f 76 0e 3b f8 73 0e 4e 0f b7 0f 8d 7c 4f 02 75 f2 3b f8 72 04 33 c0 eb 0a } //02 00 
		$a_01_2 = {64 74 77 35 64 5c } //01 00  dtw5d\
		$a_01_3 = {26 71 3d 68 64 26 76 65 6e 64 6f 72 3d 26 64 61 74 61 5f 74 79 70 65 3d 48 69 64 65 } //01 00  &q=hd&vendor=&data_type=Hide
		$a_01_4 = {26 68 69 64 65 5f 74 79 70 65 3d 44 65 6c } //01 00  &hide_type=Del
		$a_01_5 = {2e 00 67 00 69 00 66 00 00 00 2e 00 63 00 73 00 73 00 00 00 2e 00 6a 00 70 00 67 00 00 00 2e 00 70 00 6e 00 67 00 00 00 } //01 00 
		$a_01_6 = {4f 70 65 72 61 2f 39 2e 32 30 20 28 57 69 6e 64 6f 77 73 20 4e 54 20 35 2e 31 3a 20 55 3a 20 65 6e 29 } //01 00  Opera/9.20 (Windows NT 5.1: U: en)
		$a_01_7 = {69 6e 67 20 55 52 4c 20 25 53 } //01 00  ing URL %S
		$a_01_8 = {72 65 67 73 76 72 33 32 2e 65 78 65 20 2f 75 20 2f 73 } //00 00  regsvr32.exe /u /s
	condition:
		any of ($a_*)
 
}