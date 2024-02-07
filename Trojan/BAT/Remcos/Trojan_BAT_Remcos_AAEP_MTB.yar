
rule Trojan_BAT_Remcos_AAEP_MTB{
	meta:
		description = "Trojan:BAT/Remcos.AAEP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 03 00 "
		
	strings :
		$a_03_0 = {11 09 16 73 90 01 01 00 00 0a 13 04 20 03 00 00 00 38 90 01 01 ff ff ff 11 09 11 0d 16 1a 28 90 01 01 00 00 06 26 20 02 00 00 00 38 90 01 01 ff ff ff 11 0d 16 28 90 01 01 00 00 06 13 03 20 00 00 00 00 7e 90 01 01 17 00 04 7b 90 01 01 17 00 04 3a 90 01 01 ff ff ff 26 90 00 } //01 00 
		$a_01_1 = {31 00 39 00 32 00 2e 00 32 00 31 00 30 00 2e 00 32 00 31 00 35 00 2e 00 34 00 32 00 2f 00 7a 00 2f 00 70 00 61 00 6e 00 65 00 6c 00 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 73 00 2f 00 42 00 6c 00 6e 00 6c 00 76 00 63 00 63 00 6c 00 72 00 64 00 79 00 2e 00 76 00 64 00 66 00 } //01 00  192.210.215.42/z/panel/uploads/Blnlvcclrdy.vdf
		$a_01_2 = {53 00 6d 00 41 00 33 00 61 00 4a 00 37 00 70 00 6b 00 } //00 00  SmA3aJ7pk
	condition:
		any of ($a_*)
 
}