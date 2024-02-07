
rule Trojan_Win32_Kilim_C{
	meta:
		description = "Trojan:Win32/Kilim.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 77 69 6e 64 69 72 25 5c 46 6c 61 73 68 54 6f 70 69 61 5c 46 6c 61 73 68 4d 65 64 69 61 2e 65 78 65 } //01 00  %windir%\FlashTopia\FlashMedia.exe
		$a_01_1 = {77 65 62 3a 3d 40 23 28 22 32 33 34 46 42 32 46 46 36 39 43 45 35 38 34 33 30 31 44 35 39 31 44 44 35 45 45 36 34 31 33 39 31 37 37 33 30 41 34 43 31 35 46 32 22 29 2c } //01 00  web:=@#("234FB2FF69CE584301D591DD5EE6413917730A4C15F2"),
		$a_03_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 2c 20 25 77 65 62 25 2f 25 90 02 08 25 2c 20 25 41 5f 54 65 6d 70 25 5c 90 00 } //01 00 
		$a_01_3 = {49 66 49 6e 53 74 72 69 6e 67 2c 20 41 5f 53 63 72 69 70 74 44 69 72 2c 20 46 6c 61 73 68 54 6f 70 69 61 } //00 00  IfInString, A_ScriptDir, FlashTopia
		$a_00_4 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}