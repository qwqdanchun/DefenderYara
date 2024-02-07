
rule TrojanDownloader_Win32_Miscer_A{
	meta:
		description = "TrojanDownloader:Win32/Miscer.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 08 00 00 03 00 "
		
	strings :
		$a_01_0 = {53 43 48 30 53 54 00 53 43 48 30 53 54 } //01 00 
		$a_01_1 = {2f 00 72 00 6a 00 73 00 68 00 65 00 6e 00 67 00 6a 00 69 00 2f 00 61 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  /rjshengji/ad.exe
		$a_01_2 = {2f 00 72 00 6a 00 73 00 68 00 65 00 6e 00 67 00 6a 00 69 00 2f 00 41 00 6c 00 65 00 78 00 61 00 2e 00 65 00 78 00 65 00 } //01 00  /rjshengji/Alexa.exe
		$a_01_3 = {63 00 3a 00 5c 00 53 00 59 00 53 00 5c 00 61 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  c:\SYS\ad.exe
		$a_01_4 = {63 00 3a 00 5c 00 53 00 59 00 53 00 5c 00 41 00 6c 00 65 00 78 00 61 00 2e 00 65 00 78 00 65 00 } //01 00  c:\SYS\Alexa.exe
		$a_01_5 = {75 72 6c 5f 7a 68 75 61 6e 67 74 61 69 } //01 00  url_zhuangtai
		$a_01_6 = {61 6c 6c 5f 6a 69 61 5f 75 72 6c } //01 00  all_jia_url
		$a_01_7 = {7a 63 79 5f 63 6c 69 63 6b } //00 00  zcy_click
	condition:
		any of ($a_*)
 
}