
rule TrojanDownloader_Win32_Zerok_A{
	meta:
		description = "TrojanDownloader:Win32/Zerok.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 72 00 2e 00 7a 00 65 00 72 00 6f 00 74 00 69 00 6d 00 65 00 2e 00 6b 00 72 00 2f 00 } //01 00  http://r.zerotime.kr/
		$a_01_1 = {53 00 63 00 72 00 69 00 70 00 74 00 69 00 6e 00 67 00 2e 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //01 00  Scripting.FileSystemObject
		$a_01_2 = {5c 00 76 00 69 00 70 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 } //01 00  \vip\Desktop\
		$a_01_3 = {2f 00 72 00 75 00 6e 00 2e 00 70 00 68 00 70 00 3f 00 6d 00 } //01 00  /run.php?m
		$a_01_4 = {2f 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 74 00 78 00 74 00 } //01 00  /update.txt
		$a_01_5 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //00 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
	condition:
		any of ($a_*)
 
}