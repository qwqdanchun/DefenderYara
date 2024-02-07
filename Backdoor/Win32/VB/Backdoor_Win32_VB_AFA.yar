
rule Backdoor_Win32_VB_AFA{
	meta:
		description = "Backdoor:Win32/VB.AFA,SIGNATURE_TYPE_PEHSTR,3d 00 3d 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {4c 6f 61 64 45 58 45 } //0a 00  LoadEXE
		$a_01_1 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //0a 00  MSVBVM60.DLL
		$a_01_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //0a 00  URLDownloadToFileA
		$a_01_3 = {46 00 61 00 6c 00 68 00 61 00 20 00 4e 00 61 00 20 00 4d 00 65 00 6d 00 } //0a 00  Falha Na Mem
		$a_01_4 = {5c 00 4c 00 6f 00 61 00 72 00 64 00 52 00 30 00 78 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 4e 00 54 00 2e 00 76 00 62 00 70 00 } //0a 00  \LoardR0x\System NT.vbp
		$a_01_5 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 6d 00 69 00 6e 00 64 00 63 00 72 00 61 00 73 00 68 00 2e 00 69 00 74 00 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 2f 00 67 00 61 00 6c 00 6c 00 65 00 72 00 69 00 61 00 66 00 6f 00 74 00 6f 00 67 00 72 00 61 00 66 00 69 00 63 00 61 00 } //01 00  http://www.mindcrash.it/upload/galleriafotografica
		$a_01_6 = {56 00 69 00 64 00 65 00 6f 00 2e 00 65 00 78 00 65 00 } //01 00  Video.exe
		$a_01_7 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 4d 00 73 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  \system32\Msn.exe
		$a_01_8 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 76 00 68 00 6f 00 6f 00 74 00 73 00 73 00 2e 00 65 00 78 00 65 00 } //00 00  \system32\svhootss.exe
	condition:
		any of ($a_*)
 
}