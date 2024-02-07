
rule TrojanDownloader_Win32_VB_VC{
	meta:
		description = "TrojanDownloader:Win32/VB.VC,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 00 2e 00 34 00 37 00 35 00 35 00 2e 00 63 00 6e 00 3a 00 38 00 38 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2e 00 61 00 73 00 70 00 3f 00 75 00 69 00 64 00 3d 00 } //01 00  d.4755.cn:88/download.asp?uid=
		$a_01_1 = {74 00 69 00 61 00 6e 00 36 00 6d 00 2e 00 33 00 33 00 32 00 32 00 2e 00 6f 00 72 00 67 00 } //01 00  tian6m.3322.org
		$a_01_2 = {73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 77 00 6f 00 74 00 74 00 2e 00 76 00 62 00 73 00 } //01 00  system32\wott.vbs
		$a_01_3 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 6c 00 6f 00 67 00 6f 00 38 00 31 00 2e 00 65 00 78 00 65 00 } //01 00  C:\WINDOWS\logo81.exe
		$a_01_4 = {2e 00 67 00 6f 00 36 00 30 00 30 00 30 00 2e 00 63 00 6f 00 6d 00 } //00 00  .go6000.com
	condition:
		any of ($a_*)
 
}