
rule Trojan_BAT_AgentTesla_ASED_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASED!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4b 00 67 00 49 00 54 00 4b 00 6f 00 56 00 69 00 41 00 64 00 61 00 6c 00 32 00 35 00 4b 00 31 00 50 00 37 00 61 00 56 00 58 00 43 00 64 00 63 00 52 00 30 00 69 00 43 00 5a 00 4e 00 4b 00 78 00 } //01 00  KgITKoViAdal25K1P7aVXCdcR0iCZNKx
		$a_01_1 = {50 00 78 00 39 00 57 00 6b 00 52 00 55 00 5a 00 44 00 75 00 74 00 4f 00 71 00 34 00 7a 00 36 00 68 00 61 00 35 00 55 00 } //01 00  Px9WkRUZDutOq4z6ha5U
		$a_01_2 = {64 00 34 00 2f 00 30 00 4f 00 37 00 5a 00 74 00 44 00 66 00 4f 00 39 00 6e 00 63 00 4f 00 67 00 53 00 30 00 75 00 4e 00 6d 00 59 00 4c 00 34 00 32 00 37 00 35 00 43 00 6c 00 71 00 51 00 6a 00 } //01 00  d4/0O7ZtDfO9ncOgS0uNmYL4275ClqQj
		$a_01_3 = {6c 00 63 00 45 00 30 00 34 00 73 00 2b 00 30 00 30 00 47 00 74 00 57 00 6f 00 77 00 55 00 46 00 39 00 55 00 74 00 2f 00 56 00 62 00 54 00 7a 00 72 00 72 00 4a 00 53 00 38 00 44 00 49 00 6a 00 } //01 00  lcE04s+00GtWowUF9Ut/VbTzrrJS8DIj
		$a_01_4 = {4d 00 58 00 31 00 37 00 31 00 2d 00 39 00 4c 00 59 00 37 00 2d 00 52 00 31 00 37 00 59 00 2d 00 56 00 36 00 4b 00 55 00 2d 00 55 00 59 00 39 00 39 00 50 00 } //00 00  MX171-9LY7-R17Y-V6KU-UY99P
	condition:
		any of ($a_*)
 
}