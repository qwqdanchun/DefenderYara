
rule PWS_Win32_Agent_IK_dll{
	meta:
		description = "PWS:Win32/Agent.IK!dll,SIGNATURE_TYPE_PEHSTR,ffffffe5 09 ffffffe5 09 0f 00 00 ffffffe8 03 "
		
	strings :
		$a_01_0 = {32 30 33 2e 31 32 31 2e 36 39 2e 32 33 32 } //e8 03  203.121.69.232
		$a_01_1 = {4d 6f 7a 69 6c 6c 61 2f 35 2e 30 20 47 65 63 6b 6f 2f 32 30 30 35 30 32 31 32 20 46 69 72 65 66 6f 78 2f 31 2e 35 2e 30 2e 32 } //64 00  Mozilla/5.0 Gecko/20050212 Firefox/1.5.0.2
		$a_01_2 = {61 6f 6c 39 32 2e 65 78 65 } //64 00  aol92.exe
		$a_01_3 = {4b 42 30 36 32 36 33 39 35 2e 6c 6f 67 } //64 00  KB0626395.log
		$a_01_4 = {70 61 73 73 77 64 31 32 33 } //64 00  passwd123
		$a_01_5 = {63 6f 6f 6b 69 65 73 2e 7a 69 70 } //64 00  cookies.zip
		$a_01_6 = {66 6c 61 73 68 2e 7a 69 70 } //0a 00  flash.zip
		$a_01_7 = {77 65 62 63 61 73 68 6d 67 6d 74 2e 63 6f 6d } //0a 00  webcashmgmt.com
		$a_01_8 = {6e 61 74 69 6f 6e 61 6c 63 69 74 79 2e 63 6f 6d 2f 63 6f 72 70 6f 72 61 74 65 } //0a 00  nationalcity.com/corporate
		$a_01_9 = {77 77 77 2e 65 6e 74 65 72 6e 65 74 62 61 6e 6b 2e 63 6f 6d 2f 65 77 62 2f } //0a 00  www.enternetbank.com/ewb/
		$a_01_10 = {74 72 65 61 73 75 72 79 2e 70 6e 63 62 61 6e 6b } //0a 00  treasury.pncbank
		$a_01_11 = {62 75 73 69 6e 65 73 73 2e 6d 6c 2e 63 6f 6d } //01 00  business.ml.com
		$a_01_12 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //01 00  InternetOpenUrlA
		$a_01_13 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //01 00  InternetReadFile
		$a_01_14 = {49 6e 74 65 72 6e 65 74 57 72 69 74 65 46 69 6c 65 } //00 00  InternetWriteFile
	condition:
		any of ($a_*)
 
}