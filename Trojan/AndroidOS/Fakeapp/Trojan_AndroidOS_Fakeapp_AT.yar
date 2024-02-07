
rule Trojan_AndroidOS_Fakeapp_AT{
	meta:
		description = "Trojan:AndroidOS/Fakeapp.AT,SIGNATURE_TYPE_DEXHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {7a 7a 6f 66 71 68 62 33 33 } //01 00  zzofqhb33
		$a_01_1 = {77 76 65 6a 72 62 31 } //01 00  wvejrb1
		$a_01_2 = {7a 79 7a 62 6e 70 31 35 } //01 00  zyzbnp15
		$a_01_3 = {77 65 62 76 69 65 77 5f 77 69 6e 64 78 69 6c 61 5f 6c 6f 76 65 } //01 00  webview_windxila_love
		$a_01_4 = {77 65 62 5f 77 69 6e 64 78 69 6c 61 5f 75 70 } //01 00  web_windxila_up
		$a_01_5 = {77 65 62 41 61 78 74 68 6c 69 6e 67 50 72 6f 67 72 65 73 73 } //00 00  webAaxthlingProgress
	condition:
		any of ($a_*)
 
}