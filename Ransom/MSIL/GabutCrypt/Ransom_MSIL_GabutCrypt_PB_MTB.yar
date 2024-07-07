
rule Ransom_MSIL_GabutCrypt_PB_MTB{
	meta:
		description = "Ransom:MSIL/GabutCrypt.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 20 00 26 00 20 00 77 00 6d 00 69 00 63 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 63 00 6f 00 70 00 79 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 } //1 vssadmin delete shadows /all /quiet & wmic shadowcopy delete
		$a_01_1 = {77 00 62 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 63 00 61 00 74 00 61 00 6c 00 6f 00 67 00 20 00 2d 00 71 00 75 00 69 00 65 00 74 00 } //1 wbadmin delete catalog -quiet
		$a_01_2 = {79 00 6f 00 75 00 72 00 20 00 64 00 61 00 74 00 61 00 20 00 68 00 61 00 73 00 20 00 62 00 65 00 65 00 6e 00 20 00 6c 00 6f 00 63 00 6b 00 65 00 64 00 } //1 your data has been locked
		$a_01_3 = {67 00 61 00 62 00 75 00 74 00 73 00 20 00 70 00 72 00 6f 00 6a 00 65 00 63 00 74 00 20 00 69 00 73 00 20 00 62 00 61 00 63 00 6b 00 2e 00 74 00 78 00 74 00 } //1 gabuts project is back.txt
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}