
rule Backdoor_BAT_Noobsrat_A{
	meta:
		description = "Backdoor:BAT/Noobsrat.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 43 00 50 00 20 00 53 00 74 00 72 00 65 00 73 00 73 00 65 00 72 00 20 00 45 00 6e 00 61 00 62 00 6c 00 65 00 64 00 2e 00 2e 00 2e 00 } //01 00  TCP Stresser Enabled...
		$a_01_1 = {53 00 6c 00 6f 00 77 00 6c 00 6f 00 72 00 69 00 73 00 20 00 53 00 74 00 72 00 65 00 73 00 73 00 65 00 72 00 20 00 45 00 6e 00 61 00 62 00 6c 00 65 00 64 00 2e 00 2e 00 2e 00 } //01 00  Slowloris Stresser Enabled...
		$a_01_2 = {49 00 4e 00 46 00 7c 00 41 00 6e 00 74 00 69 00 2d 00 56 00 69 00 72 00 75 00 73 00 7c 00 } //01 00  INF|Anti-Virus|
		$a_01_3 = {4c 00 49 00 56 00 45 00 4c 00 4f 00 47 00 7c 00 } //01 00  LIVELOG|
		$a_01_4 = {46 00 49 00 4d 00 7c 00 46 00 49 00 4c 00 45 00 7c 00 } //01 00  FIM|FILE|
		$a_01_5 = {4b 00 69 00 6c 00 6c 00 69 00 6e 00 67 00 20 00 42 00 6f 00 74 00 73 00 2e 00 2e 00 2e 00 } //01 00  Killing Bots...
		$a_01_6 = {49 00 6e 00 69 00 74 00 69 00 61 00 74 00 69 00 6e 00 67 00 20 00 52 00 75 00 73 00 4b 00 69 00 6c 00 6c 00 2e 00 2e 00 2e 00 } //01 00  Initiating RusKill...
		$a_01_7 = {52 00 65 00 6d 00 6f 00 74 00 65 00 20 00 57 00 65 00 62 00 63 00 61 00 6d 00 2e 00 2e 00 2e 00 } //01 00  Remote Webcam...
		$a_01_8 = {53 00 65 00 6e 00 64 00 69 00 6e 00 67 00 20 00 4c 00 6f 00 67 00 73 00 2e 00 2e 00 2e 00 } //00 00  Sending Logs...
		$a_00_9 = {5d 04 00 00 } //e5 16 
	condition:
		any of ($a_*)
 
}