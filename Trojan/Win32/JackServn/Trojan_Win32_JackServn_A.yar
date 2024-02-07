
rule Trojan_Win32_JackServn_A{
	meta:
		description = "Trojan:Win32/JackServn.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0c 00 00 01 00 "
		
	strings :
		$a_03_0 = {25 73 36 34 2e 64 6c 6c 90 02 05 25 73 33 32 2e 64 6c 6c 90 00 } //01 00 
		$a_01_1 = {53 65 72 76 69 63 65 44 6f 77 6e 4c 6f 61 64 65 72 } //01 00  ServiceDownLoader
		$a_01_2 = {46 49 4e 44 57 49 4e 44 4f 57 } //01 00  FINDWINDOW
		$a_01_3 = {48 4f 4f 4b 44 4f 57 4e 4c 4f 41 44 45 52 44 4c 4c } //01 00  HOOKDOWNLOADERDLL
		$a_01_4 = {52 45 4d 4f 54 45 53 45 52 56 49 43 45 4e 41 4d 45 } //01 00  REMOTESERVICENAME
		$a_01_5 = {57 45 42 50 41 54 43 48 53 45 52 56 45 52 } //01 00  WEBPATCHSERVER
		$a_01_6 = {57 45 42 49 4e 49 46 49 4c 45 } //01 00  WEBINIFILE
		$a_01_7 = {57 45 42 46 49 4c 45 53 45 52 56 45 52 } //01 00  WEBFILESERVER
		$a_01_8 = {48 4f 4f 4b 4d 41 49 4e 44 4c 4c 00 48 4f 4f 4b } //01 00  佈䭏䅍义䱄L佈䭏
		$a_01_9 = {00 54 41 52 47 45 54 41 50 50 00 } //01 00 
		$a_01_10 = {57 49 4e 50 43 41 50 00 4e 50 46 } //01 00 
		$a_03_11 = {46 49 4c 45 4e 41 4d 45 90 02 10 46 49 4c 45 4e 41 4d 45 90 02 10 46 49 4c 45 4e 41 4d 45 90 02 10 46 49 4c 45 4e 41 4d 45 90 00 } //00 00 
		$a_00_12 = {7e 15 00 00 7e f9 } //22 21 
	condition:
		any of ($a_*)
 
}