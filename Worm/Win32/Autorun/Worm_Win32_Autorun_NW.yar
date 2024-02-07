
rule Worm_Win32_Autorun_NW{
	meta:
		description = "Worm:Win32/Autorun.NW,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 00 75 00 6e 00 67 00 5f 00 44 00 61 00 6b 00 4e 00 6f 00 6e 00 67 00 } //01 00  Dung_DakNong
		$a_01_1 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 53 00 79 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  C:\WINDOWS\Sys.exe
		$a_01_2 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 41 00 75 00 74 00 6f 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 52 00 61 00 76 00 4d 00 6f 00 6e 00 45 00 2e 00 65 00 78 00 65 00 } //01 00  shell\Auto\command=RavMonE.exe
		$a_01_3 = {4e 00 65 00 77 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  New Folder.exe
		$a_01_4 = {2f 00 6a 00 6f 00 68 00 6e 00 74 00 65 00 65 00 6e 00 2f 00 } //00 00  /johnteen/
	condition:
		any of ($a_*)
 
}