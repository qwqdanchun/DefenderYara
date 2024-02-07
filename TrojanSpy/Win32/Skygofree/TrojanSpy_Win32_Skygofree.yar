
rule TrojanSpy_Win32_Skygofree{
	meta:
		description = "TrojanSpy:Win32/Skygofree,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 20 2f 00 73 00 6b 00 79 00 70 00 65 00 5f 00 72 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 2f 00 90 00 } //01 00 
		$a_00_1 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 69 00 6e 00 67 00 20 00 46 00 69 00 6c 00 65 00 20 00 22 00 7b 00 30 00 7d 00 22 00 20 00 66 00 72 00 6f 00 6d 00 20 00 22 00 7b 00 31 00 7d 00 22 00 20 00 2e 00 2e 00 2e 00 2e 00 2e 00 2e 00 2e 00 } //01 00  Downloading File "{0}" from "{1}" .......
		$a_00_2 = {5c 00 6d 00 79 00 75 00 70 00 64 00 5c 00 73 00 6b 00 79 00 70 00 65 00 5c 00 } //01 00  \myupd\skype\
		$a_00_3 = {5c 5c 76 6d 77 61 72 65 2d 68 6f 73 74 5c 53 68 61 72 65 64 20 46 6f 6c 64 65 72 73 5c 64 61 74 69 5c 42 61 63 6b 75 70 5c 50 72 6f 6a 65 63 74 73 5c 52 45 63 6f 64 69 6e 5f 32 5c 52 45 63 6f 64 69 6e 5f 32 5c 6f 62 6a 5c 78 38 36 5c 52 65 6c 65 61 73 65 5c 52 45 63 6f 64 69 6e 5f 32 2e 70 64 62 } //01 00  \\vmware-host\Shared Folders\dati\Backup\Projects\REcodin_2\REcodin_2\obj\x86\Release\REcodin_2.pdb
		$a_00_4 = {52 00 45 00 63 00 6f 00 64 00 69 00 6e 00 5f 00 32 00 2e 00 65 00 78 00 65 00 } //00 00  REcodin_2.exe
	condition:
		any of ($a_*)
 
}