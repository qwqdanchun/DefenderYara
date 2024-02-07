
rule Ransom_MSIL_Cryptid{
	meta:
		description = "Ransom:MSIL/Cryptid,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {41 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 61 00 72 00 65 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 2e 00 } //02 00  All your files are encrypted.
		$a_01_1 = {23 00 44 00 45 00 43 00 52 00 59 00 50 00 54 00 20 00 4d 00 59 00 20 00 46 00 49 00 4c 00 45 00 53 00 23 00 2e 00 68 00 74 00 6d 00 6c 00 } //02 00  #DECRYPT MY FILES#.html
		$a_01_2 = {70 00 61 00 72 00 61 00 64 00 69 00 73 00 65 00 40 00 61 00 6c 00 6c 00 2d 00 72 00 61 00 6e 00 73 00 6f 00 6d 00 77 00 61 00 72 00 65 00 2e 00 69 00 6e 00 66 00 6f 00 } //02 00  paradise@all-ransomware.info
		$a_01_3 = {50 00 61 00 72 00 61 00 64 00 69 00 73 00 65 00 20 00 52 00 61 00 6e 00 73 00 6f 00 6d 00 77 00 61 00 72 00 65 00 20 00 54 00 65 00 61 00 6d 00 21 00 } //02 00  Paradise Ransomware Team!
		$a_01_4 = {59 00 6f 00 75 00 20 00 68 00 61 00 76 00 65 00 20 00 74 00 6f 00 20 00 70 00 61 00 79 00 20 00 66 00 6f 00 72 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 20 00 69 00 6e 00 20 00 42 00 69 00 74 00 63 00 6f 00 69 00 6e 00 73 00 2e 00 } //00 00  You have to pay for decryption in Bitcoins.
		$a_00_5 = {5d 04 00 00 f3 af } //03 80 
	condition:
		any of ($a_*)
 
}