
rule Ransom_MSIL_HiddenTear_AA_MTB{
	meta:
		description = "Ransom:MSIL/HiddenTear.AA!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 6e 63 72 79 70 74 65 64 46 69 6c 65 73 4c 69 73 74 } //01 00  EncryptedFilesList
		$a_01_1 = {59 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 66 00 75 00 63 00 6b 00 65 00 64 00 } //01 00  Your files have been fucked
		$a_01_2 = {72 00 65 00 63 00 6f 00 76 00 65 00 72 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 2c 00 20 00 79 00 6f 00 75 00 20 00 68 00 61 00 76 00 65 00 20 00 74 00 6f 00 20 00 70 00 61 00 79 00 } //01 00  recover your files, you have to pay
		$a_01_3 = {42 79 74 65 6c 6f 63 6b 65 72 } //01 00  Bytelocker
		$a_01_4 = {74 00 69 00 6d 00 65 00 6f 00 75 00 74 00 20 00 33 00 20 00 26 00 20 00 64 00 65 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 71 00 } //00 00  timeout 3 & del /f /q
	condition:
		any of ($a_*)
 
}