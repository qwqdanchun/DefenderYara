
rule Trojan_BAT_DcRat_NEAC_MTB{
	meta:
		description = "Trojan:BAT/DcRat.NEAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 03 00 00 0a 00 "
		
	strings :
		$a_03_0 = {2b 45 2b 47 2b 48 2b 4a 2b 4f 18 6f 90 01 01 00 00 0a 28 07 00 00 06 25 26 13 05 08 6f 90 01 01 00 00 0a 11 05 16 11 05 28 56 00 00 06 25 26 69 6f 90 01 01 00 00 0a 13 06 dd 71 00 00 00 09 2b c1 07 2b c0 90 00 } //05 00 
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 34 00 35 00 2e 00 39 00 33 00 2e 00 32 00 30 00 31 00 2e 00 36 00 32 00 } //02 00  http://45.93.201.62
		$a_01_2 = {50 6f 77 65 72 65 64 20 62 79 20 53 6d 61 72 74 41 73 73 65 6d 62 6c 79 20 38 2e 31 2e 32 2e 34 39 37 35 } //00 00  Powered by SmartAssembly 8.1.2.4975
	condition:
		any of ($a_*)
 
}