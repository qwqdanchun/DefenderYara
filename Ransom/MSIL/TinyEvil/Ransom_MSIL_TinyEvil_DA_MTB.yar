
rule Ransom_MSIL_TinyEvil_DA_MTB{
	meta:
		description = "Ransom:MSIL/TinyEvil.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_81_0 = {54 69 6e 79 45 76 69 6c 2e 65 78 65 } //01 00  TinyEvil.exe
		$a_81_1 = {63 6c 72 6a 69 74 2e 64 6c 6c } //01 00  clrjit.dll
		$a_81_2 = {54 69 6e 79 45 76 69 6c 2e 50 72 6f 70 65 72 74 69 65 73 } //01 00  TinyEvil.Properties
		$a_81_3 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //01 00  RijndaelManaged
		$a_81_4 = {45 6e 63 72 79 70 74 } //00 00  Encrypt
	condition:
		any of ($a_*)
 
}