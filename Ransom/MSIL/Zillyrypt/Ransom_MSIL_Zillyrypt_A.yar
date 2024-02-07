
rule Ransom_MSIL_Zillyrypt_A{
	meta:
		description = "Ransom:MSIL/Zillyrypt.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 72 00 61 00 6e 00 73 00 6f 00 6d 00 2e 00 70 00 68 00 70 00 } //01 00  /ransom.php
		$a_01_1 = {5c 00 4f 00 6b 00 75 00 42 00 65 00 6e 00 69 00 2e 00 74 00 78 00 74 00 } //01 00  \OkuBeni.txt
		$a_01_2 = {2e 00 7a 00 69 00 6c 00 6c 00 61 00 } //01 00  .zilla
		$a_01_3 = {44 00 6f 00 73 00 79 00 61 00 6c 00 61 00 72 00 69 00 6e 00 69 00 7a 00 20 00 53 00 69 00 66 00 72 00 65 00 6c 00 65 00 6e 00 64 00 69 00 21 00 } //00 00  Dosyalariniz Sifrelendi!
		$a_01_4 = {00 5d } //04 00  崀
	condition:
		any of ($a_*)
 
}