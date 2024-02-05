
rule Trojan_PowerShell_Rpdactaele_D{
	meta:
		description = "Trojan:PowerShell/Rpdactaele.D,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {63 00 6f 00 70 00 79 00 2d 00 69 00 74 00 65 00 6d 00 20 00 90 02 30 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 74 00 6f 00 72 00 65 00 5c 00 66 00 69 00 6c 00 65 00 72 00 65 00 70 00 6f 00 73 00 69 00 74 00 6f 00 72 00 79 00 5c 00 70 00 72 00 6e 00 6d 00 73 00 30 00 30 00 33 00 2e 00 69 00 6e 00 66 00 5f 00 61 00 6d 00 64 00 36 00 34 00 5f 00 90 02 20 5c 00 61 00 6d 00 64 00 36 00 34 00 5c 00 70 00 72 00 69 00 6e 00 74 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 64 00 6c 00 6c 00 90 00 } //01 00 
		$a_02_1 = {74 00 61 00 72 00 67 00 65 00 74 00 90 02 30 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 74 00 6f 00 72 00 65 00 5c 00 66 00 69 00 6c 00 65 00 72 00 65 00 70 00 6f 00 73 00 69 00 74 00 6f 00 72 00 79 00 5c 00 70 00 72 00 6e 00 6d 00 73 00 30 00 30 00 33 00 2e 00 69 00 6e 00 66 00 5f 00 61 00 6d 00 64 00 36 00 34 00 5f 00 90 02 20 5c 00 61 00 6d 00 64 00 36 00 34 00 5c 00 70 00 72 00 69 00 6e 00 74 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 64 00 6c 00 6c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}