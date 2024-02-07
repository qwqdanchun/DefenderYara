
rule Worm_BAT_Prash_A{
	meta:
		description = "Worm:BAT/Prash.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 6f 72 6d 53 68 61 72 70 2e 65 78 65 00 } //01 00 
		$a_01_1 = {6e 00 65 00 74 00 2e 00 6a 00 61 00 6a 00 61 00 63 00 61 00 2e 00 63 00 6f 00 6d 00 } //01 00  net.jajaca.com
		$a_01_2 = {41 00 74 00 74 00 61 00 63 00 6b 00 53 00 63 00 61 00 6e 00 6e 00 65 00 72 00 20 00 76 00 69 00 61 00 20 00 47 00 6f 00 74 00 68 00 69 00 6e 00 2c 00 20 00 32 00 30 00 31 00 31 00 2e 00 } //01 00  AttackScanner via Gothin, 2011.
		$a_01_3 = {4d 00 61 00 6c 00 66 00 6f 00 72 00 6d 00 65 00 64 00 20 00 50 00 41 00 53 00 56 00 20 00 72 00 65 00 73 00 75 00 6c 00 74 00 3a 00 } //00 00  Malformed PASV result:
	condition:
		any of ($a_*)
 
}