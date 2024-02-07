
rule Trojan_Win32_OutLoader_MA_MTB{
	meta:
		description = "Trojan:Win32/OutLoader.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,2d 00 2d 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {31 00 33 00 39 00 2e 00 31 00 38 00 30 00 2e 00 31 00 33 00 38 00 2e 00 32 00 32 00 36 00 } //0a 00  139.180.138.226
		$a_01_1 = {2f 00 6f 00 75 00 74 00 2e 00 74 00 78 00 74 00 } //0a 00  /out.txt
		$a_01_2 = {25 00 77 00 73 00 5c 00 25 00 68 00 73 00 2e 00 78 00 6c 00 73 00 } //0a 00  %ws\%hs.xls
		$a_01_3 = {43 00 3a 00 5c 00 54 00 45 00 4d 00 50 00 5c 00 5c 00 6d 00 79 00 61 00 70 00 70 00 2e 00 78 00 6c 00 73 } //01 00 
		$a_01_4 = {44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 53 00 75 00 6d 00 6d 00 61 00 72 00 79 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00  DocumentSummaryInformation
		$a_01_5 = {57 69 6e 48 74 74 70 51 75 65 72 79 44 61 74 61 41 76 61 69 6c 61 62 6c 65 } //01 00  WinHttpQueryDataAvailable
		$a_01_6 = {57 69 6e 48 74 74 70 53 65 6e 64 52 65 71 75 65 73 74 } //01 00  WinHttpSendRequest
		$a_01_7 = {43 72 79 70 74 44 65 63 72 79 70 74 } //01 00  CryptDecrypt
		$a_01_8 = {57 61 69 74 46 6f 72 53 69 6e 67 6c 65 4f 62 6a 65 63 74 } //00 00  WaitForSingleObject
	condition:
		any of ($a_*)
 
}