
rule Trojan_Win32_DotTorrent{
	meta:
		description = "Trojan:Win32/DotTorrent,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 0a 00 "
		
	strings :
		$a_03_0 = {4d 61 6e 61 67 65 72 00 44 6f 77 6e 6c 6f 61 64 20 41 90 01 01 4d 61 6e 61 67 65 72 00 90 01 03 5c 61 90 01 01 6d 61 6e 61 67 65 72 2e 65 78 65 00 90 00 } //01 00 
		$a_03_1 = {73 6f 66 74 2f 69 6e 73 74 61 6c 6c 2d 90 09 03 00 2f 6d 90 0f 01 00 90 00 } //01 00 
		$a_01_2 = {2e 74 6f 72 72 65 6e 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_DotTorrent_2{
	meta:
		description = "Trojan:Win32/DotTorrent,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 05 00 "
		
	strings :
		$a_03_0 = {6d 00 35 00 73 00 65 00 63 00 75 00 72 00 65 00 2f 00 90 02 15 90 03 0a 0e 69 00 6e 00 64 00 65 00 78 00 72 00 65 00 66 00 75 00 73 00 61 00 6c 00 2e 00 70 00 68 00 70 00 90 00 } //05 00 
		$a_03_1 = {6d 00 35 00 73 00 65 00 63 00 75 00 72 00 65 00 2f 00 90 02 15 78 00 65 00 64 00 6e 00 69 00 90 02 15 2e 00 70 00 68 00 70 00 90 00 } //01 00 
		$a_01_2 = {2a 00 2e 00 74 00 6f 00 72 00 72 00 65 00 6e 00 74 00 00 00 } //01 00 
		$a_01_3 = {61 00 66 00 69 00 64 00 3d 00 00 00 } //01 00 
		$a_01_4 = {73 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 2e 00 69 00 6e 00 69 00 00 00 } //01 00 
		$a_01_5 = {49 00 2d 00 51 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_DotTorrent_3{
	meta:
		description = "Trojan:Win32/DotTorrent,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 0a 00 "
		
	strings :
		$a_03_0 = {4d 61 6e 61 67 65 72 00 49 6e 73 74 61 6c 6c 00 90 01 04 77 61 6c 6c 70 61 70 65 72 2e 6a 70 67 00 61 70 6d 61 6e 61 67 65 72 2e 65 78 65 00 73 65 74 74 69 6e 67 73 2e 69 6e 69 90 00 } //05 00 
		$a_03_1 = {4d 61 6e 61 67 65 72 00 49 6e 73 74 61 6c 6c 00 90 01 06 6d 61 6e 61 67 65 72 2e 65 78 65 90 00 } //05 00 
		$a_01_2 = {77 61 6c 6c 70 61 70 65 72 2e 6a 70 67 00 73 65 74 74 69 6e 67 73 2e 69 6e 69 00 } //05 00 
		$a_01_3 = {73 65 74 74 69 6e 67 73 2e 69 6e 69 00 77 61 6c 6c 70 61 70 65 72 2e 6a 70 67 00 } //01 00 
		$a_01_4 = {55 6e 69 6e 73 74 61 6c 6c 5c 49 51 4d 61 6e 61 67 65 72 } //01 00  Uninstall\IQManager
		$a_01_5 = {49 2d 51 20 4d 61 6e 61 67 65 72 2e 6c 6e 6b } //01 00  I-Q Manager.lnk
		$a_01_6 = {55 6e 69 6e 73 74 61 6c 6c 5c 41 50 4d 61 6e 61 67 65 72 } //01 00  Uninstall\APManager
		$a_01_7 = {41 50 20 4d 61 6e 61 67 65 72 2e 6c 6e 6b } //01 00  AP Manager.lnk
		$a_01_8 = {55 6e 69 6e 73 74 61 6c 6c 5c 41 52 4d 61 6e 61 67 65 72 } //01 00  Uninstall\ARManager
		$a_01_9 = {41 52 4d 61 6e 61 67 65 72 2e 6c 6e 6b } //01 00  ARManager.lnk
		$a_03_10 = {55 6e 69 6e 73 74 61 6c 6c 5c 41 90 05 01 03 41 2d 5a 4d 61 6e 61 67 65 72 90 00 } //01 00 
		$a_03_11 = {4d 61 6e 61 67 65 72 2e 6c 6e 6b 90 09 02 00 41 90 05 01 03 41 2d 5a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}