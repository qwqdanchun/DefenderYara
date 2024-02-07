
rule Trojan_BAT_Quasar_N_MTB{
	meta:
		description = "Trojan:BAT/Quasar.N!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 15 a2 09 09 1f 00 00 00 fa 01 33 00 16 00 00 01 00 00 00 37 00 00 00 0b 00 00 00 0a 00 00 00 20 00 00 00 07 00 00 00 44 00 00 00 51 00 00 00 10 } //01 00 
		$a_01_1 = {32 32 2d 65 61 66 38 34 38 31 38 61 61 62 35 } //01 00  22-eaf84818aab5
		$a_81_2 = {31 30 38 2e 61 6e 6f 6e 66 69 6c 65 73 2e 63 6f 6d 2f 44 39 68 33 50 33 50 65 78 32 2f 65 30 66 30 61 36 37 63 2d 31 36 34 37 38 35 37 37 30 35 2f 69 6e 6f } //01 00  108.anonfiles.com/D9h3P3Pex2/e0f0a67c-1647857705/ino
		$a_81_3 = {63 6c 61 69 6d 2e 52 65 73 6f 75 72 63 65 } //01 00  claim.Resource
		$a_81_4 = {44 65 6c 65 74 65 46 69 6c 65 } //00 00  DeleteFile
	condition:
		any of ($a_*)
 
}