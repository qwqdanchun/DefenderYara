
rule TrojanDownloader_Win32_Beebone_gen_E{
	meta:
		description = "TrojanDownloader:Win32/Beebone.gen!E,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 09 00 06 00 00 03 00 "
		
	strings :
		$a_01_0 = {74 00 61 00 73 00 6b 00 6c 00 69 00 73 00 74 00 26 00 26 00 64 00 65 00 6c 00 } //03 00  tasklist&&del
		$a_01_1 = {5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 41 00 70 00 70 00 50 00 61 00 74 00 68 00 73 00 5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //03 00  \CurrentVersion\AppPaths\cmd.exe
		$a_01_2 = {53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 30 00 30 00 31 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 44 00 69 00 73 00 6b 00 5c 00 45 00 6e 00 75 00 6d 00 } //03 00  SYSTEM\ControlSet001\Services\Disk\Enum
		$a_01_3 = {38 00 42 00 34 00 43 00 32 00 34 00 30 00 38 00 35 00 31 00 3c 00 50 00 41 00 54 00 43 00 48 00 31 00 3e 00 45 00 38 00 3c 00 50 00 41 00 54 00 43 00 48 00 32 00 3e 00 35 00 39 00 38 00 39 00 30 00 31 00 36 00 36 00 33 00 31 00 43 00 30 00 43 00 33 00 } //01 00  8B4C240851<PATCH1>E8<PATCH2>5989016631C0C3
		$a_01_4 = {78 00 2e 00 6d 00 70 00 65 00 67 00 } //01 00  x.mpeg
		$a_01_5 = {3a 00 2e 00 64 00 6c 00 } //00 00  :.dl
	condition:
		any of ($a_*)
 
}