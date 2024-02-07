
rule PWS_BAT_Stimilina_D{
	meta:
		description = "PWS:BAT/Stimilina.D,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 00 74 00 65 00 61 00 6d 00 20 00 6e 00 65 00 65 00 64 00 73 00 20 00 74 00 6f 00 20 00 62 00 65 00 20 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 20 00 74 00 6f 00 20 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 20 00 50 00 6c 00 65 00 61 00 73 00 65 00 20 00 77 00 61 00 69 00 74 00 20 00 72 00 65 00 73 00 74 00 61 00 72 00 74 00 69 00 6e 00 67 00 20 00 74 00 68 00 65 00 20 00 73 00 74 00 65 00 61 00 6d 00 2e 00 } //01 00  Steam needs to be online to update. Please wait restarting the steam.
		$a_00_1 = {53 00 74 00 65 00 61 00 6d 00 20 00 2d 00 20 00 46 00 61 00 74 00 61 00 6c 00 20 00 45 00 72 00 72 00 6f 00 72 00 } //02 00  Steam - Fatal Error
		$a_80_2 = {73 73 66 6e 2a } //ssfn*  02 00 
		$a_00_3 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 73 00 74 00 6f 00 72 00 65 00 2e 00 73 00 74 00 65 00 61 00 6d 00 70 00 6f 00 77 00 65 00 72 00 65 00 64 00 2e 00 63 00 6f 00 6d 00 } //02 00  127.0.0.1 store.steampowered.com
		$a_00_4 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 73 00 74 00 65 00 61 00 6d 00 63 00 6f 00 6d 00 6d 00 75 00 6e 00 69 00 74 00 79 00 2e 00 63 00 6f 00 6d 00 } //04 00  127.0.0.1 steamcommunity.com
		$a_02_5 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 90 02 30 2f 90 02 30 2e 00 70 00 68 00 70 90 08 00 02 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 90 1b 00 2f 90 02 30 2f 00 73 00 74 00 65 00 61 00 6d 00 2e 00 65 00 78 00 65 90 00 } //00 00 
		$a_00_6 = {5d 04 00 00 86 } //38 03 
	condition:
		any of ($a_*)
 
}
rule PWS_BAT_Stimilina_D_2{
	meta:
		description = "PWS:BAT/Stimilina.D,SIGNATURE_TYPE_PEHSTR,07 00 07 00 05 00 00 05 00 "
		
	strings :
		$a_01_0 = {2f 00 64 00 61 00 74 00 61 00 2f 00 65 00 6e 00 74 00 72 00 79 00 2f 00 73 00 73 00 66 00 6e 00 2e 00 70 00 68 00 70 00 } //01 00  /data/entry/ssfn.php
		$a_01_1 = {53 00 74 00 65 00 61 00 6d 00 20 00 6e 00 65 00 65 00 64 00 73 00 20 00 74 00 6f 00 20 00 62 00 65 00 20 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 20 00 74 00 6f 00 20 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 20 00 50 00 6c 00 65 00 61 00 73 00 65 00 20 00 77 00 61 00 69 00 74 00 20 00 72 00 65 00 73 00 74 00 61 00 72 00 74 00 69 00 6e 00 67 00 20 00 74 00 68 00 65 00 20 00 73 00 74 00 65 00 61 00 6d 00 2e 00 } //01 00  Steam needs to be online to update. Please wait restarting the steam.
		$a_01_2 = {53 00 74 00 65 00 61 00 6d 00 20 00 2d 00 20 00 46 00 61 00 74 00 61 00 6c 00 20 00 45 00 72 00 72 00 6f 00 72 00 } //02 00  Steam - Fatal Error
		$a_01_3 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 73 00 74 00 6f 00 72 00 65 00 2e 00 73 00 74 00 65 00 61 00 6d 00 70 00 6f 00 77 00 65 00 72 00 65 00 64 00 2e 00 63 00 6f 00 6d 00 } //02 00  127.0.0.1 store.steampowered.com
		$a_01_4 = {31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 73 00 74 00 65 00 61 00 6d 00 63 00 6f 00 6d 00 6d 00 75 00 6e 00 69 00 74 00 79 00 2e 00 63 00 6f 00 6d 00 } //00 00  127.0.0.1 steamcommunity.com
		$a_01_5 = {00 67 16 00 } //00 8c 
	condition:
		any of ($a_*)
 
}