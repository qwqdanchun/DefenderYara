
rule Worm_BAT_Glemops_gen_A{
	meta:
		description = "Worm:BAT/Glemops.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 00 4b 00 65 00 79 00 20 00 53 00 45 00 20 00 42 00 79 00 49 00 73 00 68 00 74 00 61 00 72 00 } //01 00  sKey SE ByIshtar
		$a_01_1 = {4e 00 6f 00 6d 00 20 00 64 00 65 00 20 00 6c 00 61 00 20 00 76 00 69 00 63 00 74 00 69 00 6d 00 65 00 } //01 00  Nom de la victime
		$a_01_2 = {64 00 6c 00 6c 00 63 00 61 00 63 00 68 00 65 00 5c 00 6d 00 79 00 70 00 6f 00 72 00 6e 00 2e 00 73 00 63 00 72 00 } //01 00  dllcache\myporn.scr
		$a_01_3 = {48 00 61 00 64 00 65 00 73 00 6b 00 65 00 79 00 20 00 53 00 45 00 20 00 3a 00 20 00 53 00 74 00 65 00 61 00 6c 00 65 00 72 00 20 00 28 00 46 00 69 00 72 00 65 00 46 00 6f 00 78 00 29 00 } //00 00  Hadeskey SE : Stealer (FireFox)
	condition:
		any of ($a_*)
 
}