
rule Trojan_Linux_Kabypari{
	meta:
		description = "Trojan:Linux/Kabypari,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {6c 69 6e 75 78 5f 72 61 74 2f 73 72 63 2f 43 6c 69 65 6e 74 2e 53 78 5f 75 72 6c } //01 00 
		$a_00_1 = {6c 69 6e 75 78 5f 72 61 74 2f 73 72 63 2f 67 2e 69 6e 69 74 } //01 00 
		$a_00_2 = {6c 69 6e 75 78 5f 72 61 74 2f 73 72 63 2f 43 6c 69 65 6e 74 2e 44 69 64 } //01 00 
		$a_00_3 = {6c 69 6e 75 78 5f 72 61 74 2f 73 72 63 2f 43 6c 69 65 6e 74 2e 55 5f 6f 73 } //01 00 
		$a_00_4 = {6c 69 6e 75 78 5f 72 61 74 2f 73 72 63 2f 43 6c 69 65 6e 74 2e 52 75 6e } //00 00 
	condition:
		any of ($a_*)
 
}