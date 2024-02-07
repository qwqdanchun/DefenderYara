
rule Trojan_BAT_CryptInject_NZZ_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.NZZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 0c 2b 2b 16 2b 2b 2b 30 2b 35 2b 0b 08 6f 90 01 01 00 00 0a 1b 2c f5 de 0d 09 2b f2 90 00 } //01 00 
		$a_81_1 = {4d 76 7a 79 77 61 63 64 } //01 00  Mvzywacd
		$a_81_2 = {75 63 63 66 75 72 73 79 67 79 6c 73 6a 6d 2e 45 } //00 00  uccfursygylsjm.E
	condition:
		any of ($a_*)
 
}