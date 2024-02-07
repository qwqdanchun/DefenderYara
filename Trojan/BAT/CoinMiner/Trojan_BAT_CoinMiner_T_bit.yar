
rule Trojan_BAT_CoinMiner_T_bit{
	meta:
		description = "Trojan:BAT/CoinMiner.T!bit,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  schtasks.exe
		$a_01_1 = {63 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 73 00 63 00 20 00 } //01 00  create /sc 
		$a_01_2 = {2f 00 6d 00 6f 00 20 00 31 00 20 00 2f 00 74 00 6e 00 } //01 00  /mo 1 /tn
		$a_01_3 = {74 00 61 00 73 00 6b 00 6d 00 67 00 72 00 } //01 00  taskmgr
		$a_01_4 = {50 00 72 00 6f 00 63 00 65 00 73 00 73 00 48 00 61 00 63 00 6b 00 65 00 72 00 } //01 00  ProcessHacker
		$a_01_5 = {54 00 61 00 73 00 6b 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 } //01 00  Task Manager
		$a_01_6 = {41 00 4d 00 44 00 } //01 00  AMD
		$a_01_7 = {6e 00 76 00 69 00 64 00 69 00 61 00 } //01 00  nvidia
		$a_01_8 = {67 00 65 00 66 00 6f 00 72 00 63 00 65 00 } //01 00  geforce
		$a_01_9 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 44 00 69 00 73 00 70 00 6c 00 61 00 79 00 43 00 6f 00 6e 00 66 00 69 00 67 00 75 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //00 00  SELECT * FROM Win32_DisplayConfiguration
	condition:
		any of ($a_*)
 
}