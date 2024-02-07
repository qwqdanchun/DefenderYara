
rule Ransom_Win32_Sacra_A{
	meta:
		description = "Ransom:Win32/Sacra.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 72 72 73 61 40 69 6e 65 74 2e 75 61 } //01 00  crrsa@inet.ua
		$a_01_1 = {2e 62 37 38 31 63 62 62 32 39 30 35 34 64 62 31 32 66 38 38 66 30 38 63 36 65 31 36 31 63 31 39 39 2e 72 73 61 } //01 00  .b781cbb29054db12f88f08c6e161c199.rsa
		$a_01_2 = {eb fb 20 ed e0 20 c2 e0 f8 e5 ec 20 ea ee ec ef fc fe f2 e5 f0 e5 20 e7 e0 f8 e8 f4 f0 ee e2 e0 ed fb } //01 00 
		$a_01_3 = {70 77 6d 00 00 00 00 00 00 00 6b 77 6d 00 00 00 00 00 00 00 63 70 70 00 00 00 00 00 00 00 6d 64 00 00 00 00 00 00 00 00 65 72 74 00 00 00 00 00 00 00 63 73 76 00 00 00 00 00 00 00 78 6d 6c 00 00 00 00 00 00 00 44 3a 5c } //00 00 
		$a_00_4 = {5d 04 00 } //00 69 
	condition:
		any of ($a_*)
 
}