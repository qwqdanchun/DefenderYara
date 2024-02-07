
rule Trojan_BAT_Nanocore_SA_MSR{
	meta:
		description = "Trojan:BAT/Nanocore.SA!MSR,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {43 3a 5c 55 73 65 72 73 5c 41 64 6d 69 6e 69 73 74 72 61 74 6f 72 5c 44 65 73 6b 74 6f 70 5c 43 6c 69 65 6e 74 5c 54 65 6d 70 5c 90 01 0a 5c 43 53 50 41 52 4d 50 72 69 63 69 6e 67 43 61 6c 4f 70 73 5c 6f 62 6a 5c 44 65 62 75 67 5c 90 02 12 2e 70 64 62 90 00 } //01 00 
		$a_00_1 = {43 00 53 00 50 00 41 00 52 00 4d 00 50 00 72 00 69 00 63 00 69 00 6e 00 67 00 43 00 61 00 6c 00 4f 00 70 00 73 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00  CSPARMPricingCalOps.Properties.Resources
		$a_01_2 = {30 2e 34 2e 37 2e 32 } //00 00  0.4.7.2
	condition:
		any of ($a_*)
 
}