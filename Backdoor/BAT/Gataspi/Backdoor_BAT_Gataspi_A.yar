
rule Backdoor_BAT_Gataspi_A{
	meta:
		description = "Backdoor:BAT/Gataspi.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 10 00 00 05 00 "
		
	strings :
		$a_01_0 = {2f 00 53 00 70 00 79 00 47 00 61 00 74 00 65 00 2d 00 52 00 41 00 54 00 2f 00 } //01 00  /SpyGate-RAT/
		$a_01_1 = {43 00 68 00 61 00 74 00 20 00 53 00 75 00 63 00 63 00 65 00 65 00 64 00 65 00 64 00 20 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 65 00 64 00 20 00 2e 00 2e 00 2e 00 } //01 00  Chat Succeeded Connected ...
		$a_01_2 = {53 00 63 00 72 00 65 00 65 00 6e 00 20 00 43 00 61 00 70 00 74 00 75 00 72 00 65 00 } //01 00  Screen Capture
		$a_01_3 = {44 00 44 00 4f 00 53 00 20 00 41 00 54 00 54 00 41 00 43 00 4b 00 } //01 00  DDOS ATTACK
		$a_01_4 = {55 00 53 00 42 00 20 00 53 00 70 00 72 00 65 00 61 00 64 00 } //01 00  USB Spread
		$a_01_5 = {53 00 6b 00 79 00 70 00 65 00 20 00 53 00 70 00 72 00 65 00 61 00 64 00 } //01 00  Skype Spread
		$a_01_6 = {49 00 6e 00 6a 00 65 00 63 00 74 00 20 00 53 00 76 00 63 00 68 00 6f 00 73 00 74 00 } //01 00  Inject Svchost
		$a_01_7 = {4d 00 65 00 6c 00 74 00 20 00 41 00 66 00 74 00 65 00 72 00 20 00 52 00 75 00 6e 00 } //01 00  Melt After Run
		$a_01_8 = {52 00 47 00 7c 00 55 00 7c 00 23 00 7c 00 55 00 7c 00 } //01 00  RG|U|#|U|
		$a_01_9 = {76 00 69 00 65 00 77 00 69 00 6d 00 61 00 67 00 65 00 7c 00 55 00 7c 00 } //01 00  viewimage|U|
		$a_01_10 = {52 00 65 00 6e 00 61 00 6d 00 65 00 7c 00 55 00 7c 00 46 00 69 00 6c 00 65 00 7c 00 55 00 7c 00 } //01 00  Rename|U|File|U|
		$a_01_11 = {6f 00 70 00 65 00 6e 00 52 00 47 00 7c 00 55 00 7c 00 } //01 00  openRG|U|
		$a_01_12 = {6f 00 70 00 65 00 6e 00 75 00 72 00 6c 00 7c 00 55 00 7c 00 } //01 00  openurl|U|
		$a_01_13 = {73 00 65 00 6e 00 64 00 66 00 69 00 6c 00 65 00 7c 00 55 00 7c 00 } //01 00  sendfile|U|
		$a_01_14 = {72 00 65 00 63 00 76 00 7c 00 55 00 7c 00 } //01 00  recv|U|
		$a_01_15 = {50 00 69 00 63 00 7c 00 2a 00 2e 00 70 00 6e 00 67 00 } //00 00  Pic|*.png
		$a_00_16 = {5d 04 00 00 23 } //90 03 
	condition:
		any of ($a_*)
 
}