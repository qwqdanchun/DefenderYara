
rule Ransom_MSIL_BlackClaw_DEA_MTB{
	meta:
		description = "Ransom:MSIL/BlackClaw.DEA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_81_0 = {52 45 43 4f 56 45 52 20 59 4f 55 52 20 46 49 4c 45 53 2e 68 74 61 } //01 00 
		$a_81_1 = {52 45 43 4f 56 45 52 20 59 4f 55 52 20 46 49 4c 45 53 2e 74 78 74 } //01 00 
		$a_81_2 = {2e 5b 7b 30 7d 5d 2e 62 63 6c 61 77 } //01 00 
		$a_81_3 = {2e 62 63 6c 61 77 } //01 00 
		$a_81_4 = {68 74 74 70 73 3a 2f 2f 63 6c 61 77 2e 62 6c 61 63 6b 2f } //01 00 
		$a_81_5 = {2f 43 20 63 68 6f 69 63 65 20 2f 43 20 59 20 2f 4e 20 2f 44 20 59 20 2f 54 20 33 20 26 20 44 65 6c 20 22 } //00 00 
	condition:
		any of ($a_*)
 
}