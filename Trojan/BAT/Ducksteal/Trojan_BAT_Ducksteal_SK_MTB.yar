
rule Trojan_BAT_Ducksteal_SK_MTB{
	meta:
		description = "Trojan:BAT/Ducksteal.SK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 69 62 62 72 69 64 67 65 64 2e 65 78 65 } //01 00  libbridged.exe
		$a_81_1 = {5c 72 68 63 2e 65 78 65 } //01 00  \rhc.exe
		$a_81_2 = {70 68 70 2e 65 78 65 20 69 6e 64 65 78 2e 70 68 70 } //01 00  php.exe index.php
		$a_81_3 = {55 70 64 61 74 65 72 54 72 69 67 67 65 72 50 48 50 } //00 00  UpdaterTriggerPHP
	condition:
		any of ($a_*)
 
}