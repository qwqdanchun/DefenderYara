
rule Trojan_Win32_Wantvi_E{
	meta:
		description = "Trojan:Win32/Wantvi.E,SIGNATURE_TYPE_PEHSTR_EXT,29 00 29 00 06 00 00 0a 00 "
		
	strings :
		$a_02_0 = {55 8b ec 81 ec 90 01 02 00 00 90 02 0c 68 04 01 00 00 8d 85 90 01 02 ff ff 50 ff 15 90 01 03 00 68 90 01 03 00 8d 8d 90 01 02 ff ff 51 ff 15 90 01 03 00 6a 1b 68 00 90 01 02 00 68 00 90 01 02 00 68 00 90 01 02 00 8d 95 90 01 02 ff ff 52 90 00 } //0a 00 
		$a_02_1 = {5c 75 73 65 72 90 02 01 33 32 2e 64 61 74 90 00 } //0a 00 
		$a_00_2 = {47 65 74 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 41 } //0a 00  GetSystemDirectoryA
		$a_00_3 = {62 6c 6a 61 68 61 20 6d 75 61 68 61 20 7a 61 69 6e 61 6c 6f 20 76 73 65 21 3d } //01 00  bljaha muaha zainalo vse!=
		$a_00_4 = {61 6c 6f 20 76 73 65 61 3d } //01 00  alo vsea=
		$a_00_5 = {2f 36 3a 61 6a 61 20 6d 71 61 67 61 } //00 00  /6:aja mqaga
	condition:
		any of ($a_*)
 
}