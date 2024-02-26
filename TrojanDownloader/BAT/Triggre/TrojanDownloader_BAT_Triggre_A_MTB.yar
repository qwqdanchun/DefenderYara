
rule TrojanDownloader_BAT_Triggre_A_MTB{
	meta:
		description = "TrojanDownloader:BAT/Triggre.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 70 00 69 00 6e 00 67 00 } //02 00  cmd.exe /c ping
		$a_01_1 = {31 00 20 00 2d 00 6e 00 20 00 35 00 20 00 26 00 20 00 63 00 6f 00 70 00 79 00 } //02 00  1 -n 5 & copy
		$a_01_2 = {2e 00 76 00 62 00 73 00 } //02 00  .vbs
		$a_01_3 = {31 00 20 00 2d 00 6e 00 20 00 37 00 20 00 26 00 20 00 64 00 65 00 6c 00 } //02 00  1 -n 7 & del
		$a_01_4 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4e 00 45 00 54 00 5c 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 } //02 00  C:\Windows\Microsoft.NET\Framework
		$a_01_5 = {5c 00 76 00 34 00 2e 00 30 00 2e 00 33 00 30 00 33 00 31 00 39 00 } //01 00  \v4.0.30319
		$a_01_6 = {53 74 72 52 65 76 65 72 73 65 } //01 00  StrReverse
		$a_01_7 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}