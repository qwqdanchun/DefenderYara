
rule Worm_BAT_Futoo_A{
	meta:
		description = "Worm:BAT/Futoo.A,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {52 53 44 53 90 01 15 3a 5c 90 02 c0 57 6f 72 6d 79 5c 57 6f 72 6d 79 5c 6f 62 6a 5c 90 02 10 5c 73 76 63 68 6f 73 74 2e 70 64 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}