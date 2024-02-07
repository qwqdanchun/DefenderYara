
rule Trojan_BAT_NJRat_ARA_MTB{
	meta:
		description = "Trojan:BAT/NJRat.ARA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {24 30 37 64 63 64 62 30 63 2d 66 66 64 37 2d 34 62 62 32 2d 61 65 31 65 2d 33 37 36 30 63 65 37 63 66 63 61 32 } //02 00  $07dcdb0c-ffd7-4bb2-ae1e-3760ce7cfca2
		$a_01_1 = {5c 42 69 6e 64 65 72 20 42 79 20 4f 78 20 6d 75 68 61 6d 6d 65 64 5c 73 74 75 62 5c 6f 62 6a 5c 78 38 36 5c 52 65 6c 65 61 73 65 5c 73 74 75 62 2e 70 64 62 } //02 00  \Binder By Ox muhammed\stub\obj\x86\Release\stub.pdb
		$a_01_2 = {73 74 75 62 2e 65 78 65 } //02 00  stub.exe
		$a_01_3 = {73 74 75 62 2e 52 65 73 6f 75 72 63 65 73 } //00 00  stub.Resources
	condition:
		any of ($a_*)
 
}