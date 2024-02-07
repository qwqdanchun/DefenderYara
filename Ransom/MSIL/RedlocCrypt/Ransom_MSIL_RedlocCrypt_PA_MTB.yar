
rule Ransom_MSIL_RedlocCrypt_PA_MTB{
	meta:
		description = "Ransom:MSIL/RedlocCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_81_0 = {52 61 6e 73 6f 6d 6e 6f 74 65 } //01 00  Ransomnote
		$a_81_1 = {2f 63 20 74 61 73 6b 6b 69 6c 6c 20 2f 69 6d 20 65 78 70 6c 6f 72 65 72 2e 65 78 65 20 2f 66 } //01 00  /c taskkill /im explorer.exe /f
		$a_81_2 = {79 6f 75 72 20 66 69 6c 65 73 20 77 69 6c 6c 20 62 65 20 64 65 6c 65 74 65 64 20 66 6f 72 65 76 65 72 } //01 00  your files will be deleted forever
		$a_03_3 = {5c 52 65 64 65 72 5f 6c 6f 63 6b 5c 90 02 10 5c 90 02 10 5c 52 65 64 65 72 5f 6c 6f 63 6b 2e 70 64 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}