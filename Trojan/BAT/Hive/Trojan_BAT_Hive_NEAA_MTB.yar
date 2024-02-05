
rule Trojan_BAT_Hive_NEAA_MTB{
	meta:
		description = "Trojan:BAT/Hive.NEAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {07 08 06 08 1e 5a 1e 6f 90 01 01 00 00 0a 18 28 90 01 01 00 00 0a 9c 08 17 58 0c 08 07 8e 69 17 59 31 e1 90 00 } //05 00 
		$a_01_1 = {31 00 41 00 30 00 35 00 37 00 31 00 37 00 31 00 32 00 41 00 32 00 46 00 33 00 30 00 33 00 34 00 31 00 31 00 31 00 35 00 31 00 41 00 31 00 36 00 32 00 43 00 30 00 41 00 30 00 32 00 33 00 32 00 32 00 41 00 32 00 46 00 32 00 42 00 37 00 46 00 } //00 00 
	condition:
		any of ($a_*)
 
}