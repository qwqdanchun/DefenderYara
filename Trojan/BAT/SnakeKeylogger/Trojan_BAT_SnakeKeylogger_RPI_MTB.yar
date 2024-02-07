
rule Trojan_BAT_SnakeKeylogger_RPI_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.RPI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0d 00 00 01 00 "
		
	strings :
		$a_03_0 = {63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 90 02 a0 2e 00 70 00 6e 00 67 00 90 00 } //01 00 
		$a_01_1 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_01_2 = {44 79 6e 61 6d 69 63 49 6e 76 6f 6b 65 } //01 00  DynamicInvoke
		$a_01_3 = {41 73 73 65 6d 62 6c 79 } //01 00  Assembly
		$a_01_4 = {57 61 69 74 4f 6e 65 } //01 00  WaitOne
		$a_01_5 = {57 65 62 43 6c 69 65 6e 74 } //01 00  WebClient
		$a_01_6 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_7 = {57 72 69 74 65 41 64 61 70 74 65 72 } //01 00  WriteAdapter
		$a_01_8 = {43 68 65 63 6b 41 64 61 70 74 65 72 } //01 00  CheckAdapter
		$a_01_9 = {43 61 6c 6c 41 64 61 70 74 65 72 } //01 00  CallAdapter
		$a_01_10 = {54 65 73 74 41 64 61 70 74 65 72 } //01 00  TestAdapter
		$a_01_11 = {43 6f 6c 6c 65 63 74 41 64 61 70 74 65 72 } //01 00  CollectAdapter
		$a_01_12 = {53 6b 79 70 65 20 54 65 63 68 6e 6f 6c 6f 67 69 65 73 20 53 2e 41 2e } //00 00  Skype Technologies S.A.
	condition:
		any of ($a_*)
 
}