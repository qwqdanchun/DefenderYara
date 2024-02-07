
rule Trojan_Win32_Downloader_RPC_MTB{
	meta:
		description = "Trojan:Win32/Downloader.RPC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 38 35 2e 31 32 31 2e 31 37 37 2e 31 37 37 } //01 00  185.121.177.177
		$a_01_1 = {36 39 2e 31 36 34 2e 31 39 36 2e 32 31 } //01 00  69.164.196.21
		$a_01_2 = {31 35 39 2e 38 39 2e 31 32 30 2e 39 39 } //01 00  159.89.120.99
		$a_01_3 = {35 31 2e 32 35 34 2e 32 35 2e 31 31 35 } //01 00  51.254.25.115
		$a_01_4 = {31 36 37 2e 39 39 2e 33 39 2e 32 33 } //01 00  167.99.39.23
		$a_01_5 = {4d 6f 7a 69 6c 6c 61 } //01 00  Mozilla
		$a_01_6 = {41 70 70 6c 65 57 65 62 4b 69 74 } //01 00  AppleWebKit
		$a_01_7 = {2f 63 20 62 69 74 73 61 64 6d 69 6e 20 2f 74 72 61 6e 73 66 65 72 } //01 00  /c bitsadmin /transfer
		$a_01_8 = {2f 64 6f 77 6e 6c 6f 61 64 20 2f 70 72 69 6f 72 69 74 79 20 68 69 67 68 } //01 00  /download /priority high
		$a_01_9 = {53 65 74 74 69 6e 67 73 2e 65 78 65 } //00 00  Settings.exe
	condition:
		any of ($a_*)
 
}