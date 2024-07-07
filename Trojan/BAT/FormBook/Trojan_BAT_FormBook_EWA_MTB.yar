
rule Trojan_BAT_FormBook_EWA_MTB{
	meta:
		description = "Trojan:BAT/FormBook.EWA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {53 00 74 00 72 00 00 09 69 00 6e 00 67 00 31 } //1
		$a_01_1 = {86 06 20 00 86 06 20 00 86 06 20 00 86 06 20 00 86 06 } //1
		$a_01_2 = {4c 00 65 00 6e 00 67 00 74 00 68 00 00 09 4c 00 6f 00 61 00 64 } //1
		$a_01_3 = {47 00 65 00 74 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //1 GetString
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 } //1 FromBase64
		$a_01_5 = {47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 } //1 GetExportedTypes
		$a_01_6 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}