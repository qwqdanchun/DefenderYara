
rule DDoS_Linux_Flooder_K_xp{
	meta:
		description = "DDoS:Linux/Flooder.K!xp,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 11 00 00 02 00 "
		
	strings :
		$a_01_0 = {74 63 70 63 73 75 6d } //02 00  tcpcsum
		$a_01_1 = {66 6c 6f 6f 64 70 6f 72 74 } //01 00  floodport
		$a_01_2 = {66 72 75 69 74 73 74 72 65 73 73 65 72 } //01 00  fruitstresser
		$a_01_3 = {53 54 41 52 54 49 4e 47 20 41 54 54 41 43 4b 2e 2e 2e } //01 00  STARTING ATTACK...
		$a_01_4 = {73 74 61 72 74 69 6e 67 20 44 44 6f 53 2e 2e 2e } //01 00  starting DDoS...
		$a_01_5 = {53 45 54 54 49 4e 47 20 53 4f 43 4b 45 54 53 2e 2e 2e } //01 00  SETTING SOCKETS...
		$a_01_6 = {6b 68 61 6f 73 2e 63 } //01 00  khaos.c
		$a_01_7 = {53 65 74 74 69 6e 67 20 75 70 20 53 6f 63 6b 65 74 73 2e 2e 2e } //01 00  Setting up Sockets...
		$a_01_8 = {44 65 73 74 72 6f 79 20 74 68 61 74 20 66 75 63 6b 69 6e 67 20 62 69 74 63 68 } //01 00  Destroy that fucking bitch
		$a_01_9 = {41 74 74 61 63 6b 20 53 74 61 72 74 65 64 2e 2e 2e } //01 00  Attack Started...
		$a_01_10 = {4d 79 47 61 6d 65 41 72 65 61 20 55 44 50 20 53 70 6f 6f 66 20 46 6c 6f 6f 64 20 53 63 72 69 70 74 } //01 00  MyGameArea UDP Spoof Flood Script
		$a_01_11 = {25 73 20 49 50 20 50 4f 52 54 20 31 30 2d 35 30 20 54 49 4d 45 53 } //01 00  %s IP PORT 10-50 TIMES
		$a_01_12 = {53 74 61 72 74 69 6e 67 20 64 65 73 74 72 6f 79 69 6e 67 2e 2e 2e } //01 00  Starting destroying...
		$a_01_13 = {53 74 61 72 74 69 6e 67 20 46 6c 6f 6f 64 2e 2e 2e } //01 00  Starting Flood...
		$a_01_14 = {25 73 20 7b 74 61 72 67 65 74 20 49 50 7d 20 7b 74 68 72 65 61 64 73 7d } //01 00  %s {target IP} {threads}
		$a_01_15 = {25 73 20 5b 69 70 5d 20 5b 70 6f 72 74 5d } //01 00  %s [ip] [port]
		$a_01_16 = {53 61 6c 64 69 72 69 20 42 61 73 6c 61 64 69 } //00 00  Saldiri Basladi
		$a_00_17 = {5d 04 00 } //00 d5 
	condition:
		any of ($a_*)
 
}