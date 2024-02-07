
rule Trojan_Win32_Fareit_BA_MTB{
	meta:
		description = "Trojan:Win32/Fareit.BA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {6c 00 6f 00 47 00 69 00 74 00 65 00 63 00 68 00 } //01 00  loGitech
		$a_01_1 = {4c 00 69 00 67 00 65 00 73 00 74 00 69 00 6c 00 6c 00 69 00 6e 00 67 00 73 00 6b 00 6f 00 6e 00 73 00 75 00 6c 00 65 00 6e 00 74 00 65 00 72 00 6e 00 65 00 } //01 00  Ligestillingskonsulenterne
		$a_01_2 = {53 00 6b 00 72 00 69 00 76 00 65 00 6e 00 67 00 6c 00 65 00 72 00 73 00 34 00 } //01 00  Skrivenglers4
		$a_81_3 = {4b 6f 6e 74 6f 75 64 73 6b 72 69 66 74 65 6e } //01 00  Kontoudskriften
		$a_81_4 = {55 6e 6d 69 74 69 67 61 74 65 64 6c 79 31 } //01 00  Unmitigatedly1
		$a_81_5 = {4d 61 72 69 65 6e 67 72 6f 73 63 68 65 6e 37 } //00 00  Mariengroschen7
	condition:
		any of ($a_*)
 
}