
rule Trojan_BAT_Shelma_AAMZ_MTB{
	meta:
		description = "Trojan:BAT/Shelma.AAMZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 03 00 "
		
	strings :
		$a_03_0 = {0a 00 07 18 6f 90 01 01 00 00 0a 00 07 18 6f 90 01 01 00 00 0a 00 07 6f 90 01 01 00 00 0a 0c 08 06 16 06 8e 69 6f 90 01 01 00 00 0a 0d 90 00 } //01 00 
		$a_01_1 = {34 00 71 00 50 00 78 00 66 00 38 00 37 00 6a 00 75 00 4f 00 57 00 48 00 4a 00 76 00 6e 00 6e 00 2b 00 76 00 53 00 65 00 73 00 58 00 6a 00 50 00 43 00 62 00 4a 00 70 00 4a 00 5a 00 54 00 49 00 4a 00 6c 00 } //01 00  4qPxf87juOWHJvnn+vSesXjPCbJpJZTIJl
		$a_01_2 = {61 00 62 00 63 00 64 00 31 00 32 00 33 00 35 00 34 00 34 00 35 00 33 00 34 00 6b 00 6b 00 6b 00 64 00 64 00 66 00 31 00 31 00 31 00 31 00 33 00 32 00 34 00 33 00 32 00 35 00 6b 00 6b 00 64 00 } //00 00  abcd123544534kkkddf1111324325kkd
	condition:
		any of ($a_*)
 
}