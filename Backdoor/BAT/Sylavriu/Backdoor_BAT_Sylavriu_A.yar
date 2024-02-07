
rule Backdoor_BAT_Sylavriu_A{
	meta:
		description = "Backdoor:BAT/Sylavriu.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 03 00 "
		
	strings :
		$a_01_0 = {53 6c 61 76 65 4f 6e 6c 69 6e 65 00 77 65 62 00 73 65 6e 64 62 61 63 6b } //03 00  汓癡佥汮湩e敷b敳摮慢正
		$a_01_1 = {50 72 6f 6a 65 63 74 73 5c 57 65 62 52 65 6d 6f 74 65 20 54 6f 72 43 54 20 53 65 72 76 65 72 } //02 00  Projects\WebRemote TorCT Server
		$a_01_2 = {2f 00 53 00 6c 00 61 00 76 00 65 00 4f 00 6e 00 6c 00 69 00 6e 00 65 00 2e 00 70 00 68 00 70 00 } //02 00  /SlaveOnline.php
		$a_01_3 = {2f 00 41 00 64 00 64 00 46 00 4e 00 41 00 63 00 74 00 69 00 76 00 65 00 2e 00 70 00 68 00 70 00 } //02 00  /AddFNActive.php
		$a_01_4 = {42 00 6c 00 61 00 63 00 6b 00 53 00 63 00 72 00 65 00 65 00 6e 00 4e 00 43 00 37 00 34 00 37 00 } //02 00  BlackScreenNC747
		$a_01_5 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 49 00 6c 00 65 00 54 00 6f 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 37 00 34 00 37 00 3a 00 } //01 00  DownloadFIleToComputer747:
		$a_01_6 = {47 65 62 72 75 69 6b 65 72 5c 44 6f 63 75 6d 65 6e 74 73 } //00 00  Gebruiker\Documents
		$a_00_7 = {5d 04 00 00 } //6b 30 
	condition:
		any of ($a_*)
 
}