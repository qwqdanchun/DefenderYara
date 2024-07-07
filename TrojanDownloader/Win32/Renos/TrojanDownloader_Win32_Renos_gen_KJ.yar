
rule TrojanDownloader_Win32_Renos_gen_KJ{
	meta:
		description = "TrojanDownloader:Win32/Renos.gen!KJ,SIGNATURE_TYPE_PEHSTR_EXT,3c 00 3c 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 41 00 63 00 74 00 69 00 76 00 65 00 20 00 53 00 65 00 74 00 75 00 70 00 5c 00 49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 64 00 20 00 43 00 6f 00 6d 00 70 00 6f 00 6e 00 65 00 6e 00 74 00 73 00 } //10 Software\Microsoft\Active Setup\Installed Components
		$a_01_1 = {7b 00 59 00 34 00 37 00 39 00 43 00 36 00 44 00 30 00 2d 00 4f 00 54 00 52 00 57 00 2d 00 55 00 35 00 47 00 48 00 2d 00 53 00 31 00 45 00 45 00 2d 00 45 00 30 00 41 00 43 00 31 00 30 00 42 00 34 00 45 00 36 00 36 00 36 00 7d 00 } //10 {Y479C6D0-OTRW-U5GH-S1EE-E0AC10B4E666}
		$a_01_2 = {7b 00 46 00 31 00 34 00 36 00 43 00 39 00 42 00 31 00 2d 00 56 00 4d 00 56 00 51 00 2d 00 41 00 39 00 52 00 43 00 2d 00 4e 00 55 00 46 00 4c 00 2d 00 44 00 30 00 42 00 41 00 30 00 30 00 42 00 34 00 45 00 39 00 39 00 39 00 7d 00 } //10 {F146C9B1-VMVQ-A9RC-NUFL-D0BA00B4E999}
		$a_01_3 = {6d 00 61 00 69 00 6e 00 2e 00 62 00 69 00 6e 00 } //10 main.bin
		$a_01_4 = {56 69 72 75 73 44 61 74 61 42 61 73 65 50 61 72 73 65 72 } //10 VirusDataBaseParser
		$a_01_5 = {63 6c 73 53 6f 63 6b 49 6e 65 74 } //10 clsSockInet
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10) >=60
 
}