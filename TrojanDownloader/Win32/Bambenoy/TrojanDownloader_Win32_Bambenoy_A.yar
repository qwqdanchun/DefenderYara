
rule TrojanDownloader_Win32_Bambenoy_A{
	meta:
		description = "TrojanDownloader:Win32/Bambenoy.A,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 00 6e 00 6f 00 6c 00 79 00 62 00 61 00 62 00 4d 00 2e 00 74 00 7a 00 6f 00 2e 00 63 00 6f 00 6d 00 } //01 00  enolybabM.tzo.com
		$a_01_1 = {62 00 6c 00 61 00 63 00 6b 00 6a 00 61 00 63 00 6b 00 } //01 00  blackjack
		$a_01_2 = {61 00 6e 00 6f 00 6e 00 79 00 6d 00 6f 00 75 00 73 00 } //01 00  anonymous
		$a_01_3 = {43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 69 00 6f 00 6e 00 20 00 4b 00 4f 00 } //01 00  Connection KO
		$a_01_4 = {63 00 3a 00 5c 00 63 00 61 00 70 00 2e 00 6a 00 70 00 67 00 } //01 00  c:\cap.jpg
		$a_01_5 = {43 00 3a 00 5c 00 74 00 65 00 73 00 74 00 2e 00 6a 00 70 00 67 00 } //01 00  C:\test.jpg
		$a_01_6 = {6d 00 61 00 6a 00 2e 00 65 00 78 00 65 00 } //01 00  maj.exe
		$a_01_7 = {66 00 69 00 6c 00 65 00 73 00 2e 00 74 00 6d 00 70 00 } //01 00  files.tmp
		$a_01_8 = {5c 00 6c 00 61 00 75 00 6e 00 63 00 68 00 2e 00 65 00 78 00 65 00 } //01 00  \launch.exe
		$a_01_9 = {5c 46 74 70 54 65 73 74 5c 46 74 70 54 65 73 74 5c 46 74 70 54 65 73 74 } //00 00  \FtpTest\FtpTest\FtpTest
	condition:
		any of ($a_*)
 
}