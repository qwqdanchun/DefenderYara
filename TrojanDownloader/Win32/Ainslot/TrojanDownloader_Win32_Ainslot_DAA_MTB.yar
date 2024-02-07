
rule TrojanDownloader_Win32_Ainslot_DAA_MTB{
	meta:
		description = "TrojanDownloader:Win32/Ainslot.DAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0a 00 00 01 00 "
		
	strings :
		$a_00_0 = {78 65 6e 73 65 72 76 69 63 65 2e 65 78 65 } //01 00  xenservice.exe
		$a_00_1 = {71 65 6d 75 2d 67 61 2e 65 78 65 } //02 00  qemu-ga.exe
		$a_00_2 = {63 6d 64 2e 65 78 65 20 2f 63 20 73 74 61 72 74 20 2f 42 20 70 6f 77 65 72 73 68 65 6c 6c 20 2d 77 69 6e 64 6f 77 73 74 79 6c 65 20 68 69 64 64 65 6e 20 2d 63 6f 6d 6d 61 6e 64 20 22 26 7b 24 74 3d 27 23 69 23 65 78 23 23 23 23 40 28 6e 23 65 77 23 23 23 2d 23 6f 62 23 6a 65 63 23 74 20 4e 23 23 23 23 23 65 74 23 2e 57 23 65 62 23 43 6c 23 69 65 23 6e 74 23 29 2e 23 55 70 23 6c 6f 61 23 64 23 23 23 23 23 53 74 23 72 69 23 6e 67 } //02 00  cmd.exe /c start /B powershell -windowstyle hidden -command "&{$t='#i#ex####@(n#ew###-#ob#jec#t N#####et#.W#eb#Cl#ie#nt#).#Up#loa#d#####St#ri#ng
		$a_02_3 = {28 23 27 27 68 23 74 23 74 70 23 3a 23 2f 2f 90 02 40 2f 6c 65 67 23 69 6f 6e 31 23 37 23 2f 23 77 23 65 6c 23 63 6f 23 6d 65 27 27 23 2c 23 27 27 48 23 6f 72 23 73 65 48 6f 23 75 72 73 27 27 23 29 23 7c 23 69 23 65 23 78 27 2e 72 65 70 6c 61 63 65 28 27 23 27 2c 27 27 29 2e 73 70 6c 69 74 28 27 40 27 2c 35 29 3b 26 90 00 } //02 00 
		$a_02_4 = {68 74 74 70 3a 2f 2f 90 02 0f 75 70 64 61 74 65 32 2e 90 02 05 2f 74 65 73 74 2f 75 73 2f 90 02 0f 2e 65 78 65 90 00 } //01 00 
		$a_00_5 = {5c 70 6f 6f 6c 2e 65 78 65 } //01 00  \pool.exe
		$a_00_6 = {5c 70 61 73 74 65 72 2e 65 78 65 } //01 00  \paster.exe
		$a_00_7 = {5c 75 63 2e 65 78 65 } //01 00  \uc.exe
		$a_00_8 = {5c 70 6f 73 74 72 74 72 65 74 62 61 63 6b 73 2e 65 78 65 } //01 00  \postrtretbacks.exe
		$a_00_9 = {5c 6e 65 65 72 74 65 72 76 61 2e 65 78 65 } //00 00  \neerterva.exe
	condition:
		any of ($a_*)
 
}