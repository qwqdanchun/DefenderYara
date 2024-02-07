
rule TrojanDownloader_Win32_Vaxlorne_A{
	meta:
		description = "TrojanDownloader:Win32/Vaxlorne.A,SIGNATURE_TYPE_PEHSTR_EXT,22 00 22 00 08 00 00 14 00 "
		
	strings :
		$a_01_0 = {54 6f 6f 6c 68 65 6c 70 33 32 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //05 00  Toolhelp32ReadProcessMemory
		$a_01_1 = {46 69 6c 65 73 5c 4d 69 63 72 6f 73 6f 66 74 20 53 68 61 72 65 64 5c 57 69 6e 64 6f 77 73 20 4c 69 76 65 5c } //05 00  Files\Microsoft Shared\Windows Live\
		$a_01_2 = {64 65 6c 65 74 65 73 65 6c 66 2e 62 61 74 } //01 00  deleteself.bat
		$a_01_3 = {25 73 5c 25 73 40 25 73 2e 6c 6f 67 } //01 00  %s\%s@%s.log
		$a_01_4 = {44 6f 77 6e 6c 6f 61 64 52 61 6e 64 6f 6d 55 72 6c 46 69 6c 65 3a 3a } //01 00  DownloadRandomUrlFile::
		$a_01_5 = {4b 69 6c 6c 50 72 6f 63 65 73 73 42 79 46 69 6c 65 4e 61 6d 65 28 25 73 29 } //01 00  KillProcessByFileName(%s)
		$a_01_6 = {3a 3d 20 72 65 67 2e 52 65 61 64 49 6e 74 65 67 65 72 28 27 } //01 00  := reg.ReadInteger('
		$a_01_7 = {5f 63 6f 75 6e 74 2e 68 74 6d 6c 3f 69 64 3d } //00 00  _count.html?id=
	condition:
		any of ($a_*)
 
}