
rule Trojan_Win32_Matcash_gen_G{
	meta:
		description = "Trojan:Win32/Matcash.gen!G,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 07 00 00 0a 00 "
		
	strings :
		$a_02_0 = {2f 6d 63 61 73 68 90 02 04 68 74 74 70 3a 2f 2f 90 02 0e 2e 63 6f 6d 90 00 } //0a 00 
		$a_00_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 20 46 6f 6c 64 65 72 73 } //02 00  Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders
		$a_02_2 = {70 72 6f 66 69 6c 65 90 02 02 2e 6a 73 90 00 } //02 00 
		$a_00_3 = {74 6d 70 00 53 74 61 72 74 20 50 61 67 65 00 00 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 4d 61 69 6e } //01 00 
		$a_00_4 = {62 6f 6f 74 2e 70 68 70 3f 6d 61 63 3d 00 } //01 00  潢瑯瀮灨洿捡=
		$a_00_5 = {25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 } //01 00  %02X%02X%02X%02X%02X%02X
		$a_00_6 = {49 6e 74 65 72 6e 65 74 53 68 6f 72 74 63 75 74 2e 57 } //00 00  InternetShortcut.W
	condition:
		any of ($a_*)
 
}