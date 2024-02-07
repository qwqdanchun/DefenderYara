
rule Trojan_Win32_Vundo_QA{
	meta:
		description = "Trojan:Win32/Vundo.QA,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 c9 0d 66 19 00 81 c1 5f f3 6e 3c 30 0c 3e } //01 00 
		$a_01_1 = {fa 31 e8 67 4d ad 67 83 d8 69 ed df f2 65 fb 7b ea a1 af 57 aa 1d 0b 73 41 d9 91 cf } //01 00 
		$a_01_2 = {88 cb 6e 71 bf a7 09 ed 2a c3 ab a9 80 1f a5 a5 b8 bb a9 e1 78 97 25 5d 53 b3 d7 19 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Vundo_QA_2{
	meta:
		description = "Trojan:Win32/Vundo.QA,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 72 00 75 00 6e 00 } //01 00  \windows\currentversion\run
		$a_00_1 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 57 00 69 00 6e 00 } //01 00  \Windows NT\CurrentVersion\Win
		$a_01_2 = {41 00 70 00 70 00 49 00 6e 00 69 00 74 00 5f 00 44 00 4c 00 4c 00 73 00 } //01 00  AppInit_DLLs
		$a_01_3 = {2e 00 70 00 68 00 70 00 3f 00 6e 00 75 00 6d 00 3d 00 25 00 73 00 26 00 72 00 65 00 76 00 3d 00 25 00 73 00 26 00 6f 00 73 00 3d 00 25 00 73 00 } //01 00  .php?num=%s&rev=%s&os=%s
		$a_01_4 = {66 00 74 00 70 00 2a 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 65 00 72 00 2a 00 } //01 00  ftp*commander*
		$a_01_5 = {2e 00 70 00 68 00 70 00 3f 00 72 00 65 00 76 00 3d 00 25 00 73 00 26 00 63 00 6f 00 64 00 65 00 3d 00 25 00 73 00 26 00 } //01 00  .php?rev=%s&code=%s&
		$a_01_6 = {26 00 72 00 65 00 66 00 3d 00 25 00 73 00 26 00 72 00 65 00 61 00 6c 00 5f 00 72 00 65 00 66 00 65 00 72 00 3d 00 25 00 73 00 } //01 00  &ref=%s&real_refer=%s
		$a_01_7 = {25 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 25 00 5c 00 4f 00 70 00 65 00 72 00 61 00 } //00 00  %APPDATA%\Opera
	condition:
		any of ($a_*)
 
}