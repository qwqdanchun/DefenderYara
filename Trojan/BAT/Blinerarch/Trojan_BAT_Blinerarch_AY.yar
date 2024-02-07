
rule Trojan_BAT_Blinerarch_AY{
	meta:
		description = "Trojan:BAT/Blinerarch.AY,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5f 00 68 00 6f 00 6d 00 65 00 70 00 61 00 67 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  autorun_homepage.exe
		$a_01_1 = {61 00 62 00 6f 00 6e 00 65 00 6e 00 74 00 5f 00 72 00 75 00 6c 00 65 00 73 00 } //01 00  abonent_rules
		$a_01_2 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 41 00 6e 00 74 00 69 00 56 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //01 00  SELECT * FROM AntiVirusProduct
		$a_01_3 = {62 00 65 00 65 00 6c 00 69 00 6e 00 65 00 } //01 00  beeline
		$a_01_4 = {70 00 68 00 6f 00 6e 00 65 00 27 00 29 00 2e 00 6d 00 61 00 73 00 6b 00 28 00 } //00 00  phone').mask(
	condition:
		any of ($a_*)
 
}