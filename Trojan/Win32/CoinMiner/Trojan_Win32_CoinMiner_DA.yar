
rule Trojan_Win32_CoinMiner_DA{
	meta:
		description = "Trojan:Win32/CoinMiner.DA,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {35 88 6a 3f 24 90 02 10 35 d3 08 a3 85 90 02 10 35 2e 8a 19 13 90 00 } //01 00 
		$a_01_1 = {2e 6e 69 63 65 68 61 73 68 2e 63 6f 6d 00 00 00 3a 2f 2f 00 73 74 72 61 74 75 6d 2b 74 63 70 3a 2f 2f } //01 00 
		$a_01_2 = {22 6d 65 74 68 6f 64 22 3a 22 70 69 6e 67 22 2c 22 70 61 72 61 6d 73 22 3a 7b 22 69 64 22 3a 22 25 73 22 2c 22 63 6c 69 65 6e 74 22 } //01 00  "method":"ping","params":{"id":"%s","client"
		$a_01_3 = {58 4d 52 69 67 00 00 00 25 73 2f 25 73 20 28 57 69 6e 64 6f 77 73 20 4e 54 20 25 6c 75 2e 25 6c 75 00 00 00 29 } //00 00 
		$a_00_4 = {78 b5 00 } //00 06 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_CoinMiner_DA_2{
	meta:
		description = "Trojan:Win32/CoinMiner.DA,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 00 73 00 20 00 2f 00 6e 00 20 00 2f 00 73 00 20 00 2f 00 69 00 3a 00 22 00 2f 00 25 00 30 00 31 00 36 00 49 00 36 00 34 00 78 00 20 00 2f 00 71 00 22 00 20 00 22 00 25 00 73 00 22 00 } //01 00  %s /n /s /i:"/%016I64x /q" "%s"
		$a_01_1 = {2f 71 00 00 2f 69 6e 00 2f 63 70 00 2f 76 61 00 2f 76 78 78 76 } //01 00 
		$a_01_2 = {73 65 72 76 65 72 5f 70 61 74 68 00 2f 70 2f } //01 00 
		$a_01_3 = {61 63 74 69 76 69 74 79 5f 64 6f 6d 61 69 6e 73 } //01 00  activity_domains
		$a_01_4 = {6d 69 6e 65 72 5f 61 63 74 69 76 69 74 79 } //01 00  miner_activity
		$a_01_5 = {69 64 6c 65 5f 70 6f 6c 6c 5f 69 6e 74 65 72 76 61 6c } //00 00  idle_poll_interval
		$a_00_6 = {78 b9 00 00 } //04 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_CoinMiner_DA_3{
	meta:
		description = "Trojan:Win32/CoinMiner.DA,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {0f b6 c8 8a d0 0f b6 d8 80 e2 3f 0f af d9 32 98 90 01 04 80 c3 77 0f b6 cb 88 98 90 01 04 40 88 91 90 01 04 83 f8 41 72 d4 90 00 } //01 00 
		$a_01_1 = {2e 6e 69 63 65 68 61 73 68 2e 63 6f 6d 00 00 00 3a 2f 2f 00 73 74 72 61 74 75 6d 2b 74 63 70 3a 2f 2f } //01 00 
		$a_01_2 = {22 6d 65 74 68 6f 64 22 3a 22 70 69 6e 67 22 2c 22 70 61 72 61 6d 73 22 3a 7b 22 69 64 22 3a 22 25 73 22 2c 22 63 6c 69 65 6e 74 22 } //01 00  "method":"ping","params":{"id":"%s","client"
		$a_01_3 = {58 4d 52 69 67 00 00 00 25 73 2f 25 73 20 28 57 69 6e 64 6f 77 73 20 4e 54 20 25 6c 75 2e 25 6c 75 00 00 00 29 } //00 00 
		$a_00_4 = {7e 15 00 } //00 6f 
	condition:
		any of ($a_*)
 
}