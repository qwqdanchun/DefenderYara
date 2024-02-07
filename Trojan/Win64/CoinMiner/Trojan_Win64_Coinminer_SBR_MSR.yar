
rule Trojan_Win64_Coinminer_SBR_MSR{
	meta:
		description = "Trojan:Win64/Coinminer.SBR!MSR,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {70 00 6f 00 6f 00 6c 00 2e 00 73 00 75 00 70 00 70 00 6f 00 72 00 74 00 78 00 6d 00 72 00 2e 00 63 00 6f 00 6d 00 } //01 00  pool.supportxmr.com
		$a_01_1 = {48 61 6b 75 5c 6f 62 6a 5c 44 65 62 75 67 5c 6d 73 69 73 2e 70 64 62 } //01 00  Haku\obj\Debug\msis.pdb
		$a_01_2 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 41 00 6e 00 74 00 69 00 53 00 70 00 79 00 77 00 61 00 72 00 65 00 } //01 00  DisableAntiSpyware
		$a_01_3 = {50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 } //01 00  Policies\Microsoft\Windows Defender
		$a_01_4 = {63 00 75 00 72 00 72 00 65 00 6e 00 63 00 79 00 20 00 6d 00 6f 00 6e 00 65 00 72 00 6f 00 } //01 00  currency monero
		$a_01_5 = {73 00 74 00 61 00 72 00 74 00 20 00 74 00 68 00 65 00 20 00 6d 00 69 00 6e 00 65 00 72 00 20 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //00 00  start the miner process
	condition:
		any of ($a_*)
 
}