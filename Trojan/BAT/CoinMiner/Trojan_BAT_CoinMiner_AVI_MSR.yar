
rule Trojan_BAT_CoinMiner_AVI_MSR{
	meta:
		description = "Trojan:BAT/CoinMiner.AVI!MSR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 61 00 73 00 6b 00 6d 00 67 00 72 00 } //01 00  Taskmgr
		$a_01_1 = {50 00 72 00 6f 00 63 00 65 00 73 00 73 00 48 00 61 00 63 00 6b 00 65 00 72 00 } //01 00  ProcessHacker
		$a_03_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6d 00 72 00 62 00 66 00 69 00 6c 00 65 00 2e 00 78 00 79 00 7a 00 2f 00 90 02 15 73 00 79 00 73 00 2e 00 64 00 6c 00 6c 00 90 00 } //01 00 
		$a_01_3 = {2e 00 74 00 65 00 6d 00 70 00 } //01 00  .temp
		$a_01_4 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 2e 00 65 00 78 00 65 00 } //00 00  \Windows Update Service.exe
	condition:
		any of ($a_*)
 
}