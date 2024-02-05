
rule Trojan_BAT_RedLineStealer_G_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.G!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {35 00 35 00 35 00 35 00 35 00 35 00 35 00 35 00 35 00 35 00 35 00 35 00 35 00 35 00 35 00 35 00 35 00 35 00 35 00 35 00 35 00 64 00 34 00 34 00 34 00 34 00 34 00 34 00 34 00 34 00 34 00 34 00 34 00 34 00 34 00 34 00 34 00 34 00 34 00 34 00 34 00 34 00 34 00 41 00 33 00 33 00 33 00 33 00 33 00 33 00 33 00 33 00 33 00 33 00 33 00 33 00 33 00 33 00 33 00 33 00 33 00 33 00 6f 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 32 00 4c 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 31 00 } //02 00 
		$a_01_1 = {f6 00 63 00 df 00 75 00 6a 00 73 00 6e 00 66 00 6a 00 f6 00 6a 00 67 00 69 00 e4 00 45 00 32 00 6e 00 6b 00 79 00 df 00 70 00 fc 00 66 00 df 00 73 00 f6 00 fc 00 fc 00 65 00 75 00 75 00 31 00 } //02 00 
		$a_01_2 = {61 52 33 6e 62 66 38 64 51 70 32 66 65 4c 6d 6b 33 31 2e 6c 53 66 67 41 70 61 74 6b 64 78 73 56 63 47 63 72 6b 74 6f 46 64 2e 72 65 73 6f 75 72 63 65 73 } //00 00 
	condition:
		any of ($a_*)
 
}