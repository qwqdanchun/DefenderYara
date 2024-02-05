
rule Trojan_BAT_Lokibot_OCGA_MTB{
	meta:
		description = "Trojan:BAT/Lokibot.OCGA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 28 90 01 03 0a 72 af 1c 00 70 6f 90 01 03 0a 6f 90 01 03 0a 0c 73 c0 00 00 0a 0d 09 20 00 01 00 00 6f 90 01 03 0a 00 09 08 6f 90 01 03 0a 00 09 18 6f 90 01 03 0a 00 09 6f 90 01 03 0a 06 16 06 8e 69 6f 90 01 03 0a 13 04 11 04 90 00 } //01 00 
		$a_01_1 = {48 00 65 00 69 00 61 00 } //01 00 
		$a_01_2 = {5a 00 37 00 35 00 34 00 53 00 48 00 50 00 35 00 41 00 55 00 38 00 35 00 41 00 34 00 35 00 49 00 47 00 5a 00 4f 00 34 00 34 00 48 00 } //01 00 
		$a_01_3 = {54 00 77 00 6f 00 4c 00 65 00 76 00 65 00 6c 00 45 00 6e 00 75 00 6d 00 65 00 72 00 61 00 74 00 6f 00 72 00 2e 00 54 00 75 00 63 00 73 00 6f 00 6e 00 } //00 00 
	condition:
		any of ($a_*)
 
}