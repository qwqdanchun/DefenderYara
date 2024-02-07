
rule Backdoor_BAT_PBot{
	meta:
		description = "Backdoor:BAT/PBot,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0d 00 00 02 00 "
		
	strings :
		$a_01_0 = {42 00 6f 00 74 00 4e 00 65 00 74 00 20 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 20 00 69 00 73 00 3a 00 } //02 00  BotNet Browser is:
		$a_01_1 = {5b 00 4a 00 6f 00 69 00 6e 00 5d 00 5b 00 50 00 42 00 6f 00 74 00 4e 00 65 00 74 00 } //01 00  [Join][PBotNet
		$a_01_2 = {5d 00 54 00 72 00 61 00 63 00 69 00 6e 00 67 00 7c 00 } //01 00  ]Tracing|
		$a_01_3 = {5b 00 54 00 61 00 6c 00 6b 00 5d 00 5b 00 } //01 00  [Talk][
		$a_01_4 = {5d 00 4f 00 66 00 66 00 7c 00 } //01 00  ]Off|
		$a_01_5 = {5b 00 4a 00 6f 00 69 00 6e 00 5d 00 } //01 00  [Join]
		$a_01_6 = {5b 00 4c 00 65 00 66 00 74 00 5d 00 } //01 00  [Left]
		$a_01_7 = {5b 00 55 00 73 00 72 00 73 00 5d 00 } //01 00  [Usrs]
		$a_00_8 = {75 00 64 00 70 00 5f 00 64 00 6f 00 73 00 } //01 00  udp_dos
		$a_00_9 = {74 00 63 00 70 00 5f 00 64 00 6f 00 73 00 } //01 00  tcp_dos
		$a_00_10 = {69 00 70 00 2e 00 74 00 78 00 74 00 } //02 00  ip.txt
		$a_00_11 = {54 00 73 00 6b 00 74 00 72 00 61 00 2e 00 65 00 78 00 65 00 } //02 00  Tsktra.exe
		$a_00_12 = {54 00 65 00 73 00 74 00 6f 00 2e 00 74 00 78 00 74 00 } //00 00  Testo.txt
		$a_00_13 = {5d 04 00 00 b0 73 03 80 } //5c 33 
	condition:
		any of ($a_*)
 
}