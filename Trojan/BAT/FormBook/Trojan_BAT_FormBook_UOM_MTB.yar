
rule Trojan_BAT_FormBook_UOM_MTB{
	meta:
		description = "Trojan:BAT/FormBook.UOM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_1 = {30 00 31 00 31 00 30 00 31 00 30 00 30 00 30 00 30 00 31 00 31 00 31 00 30 00 31 00 30 00 30 00 30 00 31 00 31 00 31 00 30 00 31 00 30 00 30 00 30 00 31 00 31 00 31 00 30 00 30 00 30 00 30 00 30 00 30 00 31 00 31 00 31 00 30 00 31 00 30 00 30 00 30 00 31 00 30 00 31 00 31 00 31 00 31 00 30 00 30 00 } //1 01101000011101000111010001110000001110100010111100
		$a_01_2 = {31 00 30 00 31 00 31 00 31 00 31 00 30 00 30 00 31 00 31 00 31 00 30 00 30 00 30 00 30 00 30 00 31 00 31 00 30 00 31 00 30 00 31 00 30 00 30 00 31 00 30 00 31 00 31 00 31 00 30 00 30 00 30 00 31 00 31 00 30 00 30 00 31 00 30 00 30 00 30 00 31 00 31 00 30 00 30 00 30 00 30 00 30 00 30 00 31 00 31 00 } //1 10111100111000001101010010111000110010001100000011
		$a_01_3 = {55 6e 65 73 63 61 70 65 64 58 6d 6c 44 69 61 67 6e 6f 73 74 69 63 44 61 74 61 } //1 UnescapedXmlDiagnosticData
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_5 = {54 6f 53 74 72 69 6e 67 } //1 ToString
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}