
rule Adware_Win32_Wintrim{
	meta:
		description = "Adware:Win32/Wintrim,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {6d 79 6d 75 74 73 67 6c 77 6f 72 6b } //01 00  mymutsglwork
		$a_01_1 = {73 6f 66 74 77 61 72 65 5c 65 70 6b 5f 65 78 74 72 } //01 00  software\epk_extr
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 6c 69 76 65 73 76 63 } //01 00  Software\livesvc
		$a_01_3 = {3c 5f 45 47 4d 43 5f 3e } //01 00  <_EGMC_>
		$a_01_4 = {46 69 6e 73 74 61 6c 6c 5f 64 69 72 } //02 00  Finstall_dir
		$a_01_5 = {48 6f 74 54 56 50 6c 61 79 65 72 } //01 00  HotTVPlayer
		$a_01_6 = {43 45 47 54 6f 6f 6c 73 3a 3a 43 72 65 61 74 65 44 69 72 65 63 74 6f 72 79 28 29 20 65 6e 74 65 72 65 64 } //00 00  CEGTools::CreateDirectory() entered
	condition:
		any of ($a_*)
 
}
rule Adware_Win32_Wintrim_2{
	meta:
		description = "Adware:Win32/Wintrim,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 68 6f 73 74 2e 64 62 00 } //01 00 
		$a_01_1 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 64 6f 6d 61 69 6e 20 57 48 45 52 45 20 27 25 73 27 20 4c 49 4b 45 20 64 6f 6d 61 69 6e 20 41 4e 44 20 74 79 70 65 3d 34 00 } //01 00 
		$a_01_2 = {55 50 44 41 54 45 20 61 64 76 65 72 74 69 73 65 20 53 45 54 20 73 68 6f 77 63 6e 74 3d 73 68 6f 77 63 6e 74 2b 31 20 57 48 45 52 45 20 69 64 78 3d 25 64 00 } //01 00  偕䅄䕔愠癤牥楴敳匠呅猠潨捷瑮猽潨捷瑮ㄫ圠䕈䕒椠硤┽d
		$a_01_3 = {53 45 4c 45 43 54 20 69 64 78 2c 61 64 76 20 46 52 4f 4d 20 61 64 76 65 72 74 69 73 65 20 57 48 45 52 45 20 25 73 20 4f 52 44 45 52 20 42 59 20 73 68 6f 77 63 6e 74 20 41 53 43 00 } //01 00 
		$a_01_4 = {55 50 44 41 54 45 20 61 64 76 65 72 74 69 73 65 20 53 45 54 20 73 68 6f 77 63 6e 74 3d 73 68 6f 77 63 6e 74 2b 31 2c 20 6c 61 73 74 73 68 6f 77 3d 25 64 20 57 48 45 52 45 20 69 64 78 3d 25 64 00 } //00 00 
		$a_01_5 = {00 67 16 00 00 } //d6 0c 
	condition:
		any of ($a_*)
 
}