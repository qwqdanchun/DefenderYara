
rule Trojan_Win32_KillDisk_N_dha{
	meta:
		description = "Trojan:Win32/KillDisk.N!dha,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 68 75 74 64 6f 77 6e 20 2f 72 20 2f 74 20 25 64 } //01 00  shutdown /r /t %d
		$a_01_1 = {5c 5c 2e 5c 50 68 79 73 69 63 61 6c 44 72 69 76 65 25 64 } //01 00  \\.\PhysicalDrive%d
		$a_01_2 = {2f 63 20 73 63 20 63 72 65 61 74 65 } //02 00  /c sc create
		$a_01_3 = {22 63 6d 64 20 2f 63 20 64 65 6c 20 25 73 22 } //02 00  "cmd /c del %s"
		$a_01_4 = {2f 63 20 66 6f 72 6d 61 74 20 25 63 3a 20 2f 59 20 2f 58 20 2f 46 53 3a 4e 54 46 53 } //0a 00  /c format %c: /Y /X /FS:NTFS
		$a_01_5 = {76 73 73 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //00 00  vssadmin delete shadows /all /quiet
		$a_00_6 = {5d 04 00 00 1d 97 03 80 5c 26 00 00 1f } //97 03 
	condition:
		any of ($a_*)
 
}