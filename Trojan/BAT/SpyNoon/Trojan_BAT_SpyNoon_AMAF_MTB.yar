
rule Trojan_BAT_SpyNoon_AMAF_MTB{
	meta:
		description = "Trojan:BAT/SpyNoon.AMAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {30 00 43 00 31 00 46 00 31 00 42 00 30 00 44 00 32 00 30 00 38 00 34 00 3a 00 3a 00 3a 00 30 00 38 00 31 00 38 00 35 00 42 00 30 00 39 00 35 00 39 00 33 00 } //01 00  0C1F1B0D2084:::08185B09593
		$a_01_1 = {31 00 31 00 37 00 45 00 31 00 33 00 3a 00 3a 00 30 00 34 00 30 00 44 00 31 00 39 00 30 00 43 00 30 00 38 00 34 00 35 00 30 00 35 00 3a 00 3a 00 3a 00 30 00 38 00 3a 00 3a 00 3a 00 31 00 36 00 } //01 00  117E13::040D190C084505:::08:::16
		$a_03_2 = {07 08 18 5b 02 08 18 6f 90 01 01 00 00 0a 1f 10 28 90 01 01 00 00 0a 9c 00 08 18 58 0c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}