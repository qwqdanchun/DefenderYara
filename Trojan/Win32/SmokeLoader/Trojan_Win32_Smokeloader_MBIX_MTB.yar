
rule Trojan_Win32_Smokeloader_MBIX_MTB{
	meta:
		description = "Trojan:Win32/Smokeloader.MBIX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4b 00 65 00 67 00 65 00 77 00 69 00 76 00 69 00 20 00 77 00 69 00 68 00 6f 00 73 00 69 00 77 00 6f 00 62 00 6f 00 79 00 75 00 64 00 65 00 20 00 7a 00 65 00 72 00 65 00 6e 00 6f 00 62 00 61 00 76 00 61 00 73 00 61 00 78 00 6f 00 70 00 20 00 76 00 69 00 6d 00 6f 00 79 00 6f 00 74 00 65 00 66 00 65 00 6e 00 20 00 67 00 6f 00 72 00 20 00 72 00 6f 00 74 00 20 00 64 00 69 00 77 00 65 00 78 00 6f 00 77 00 20 00 62 00 65 00 76 00 75 00 78 00 75 00 6d 00 69 00 63 00 69 00 78 00 65 00 20 00 77 00 6f 00 76 00 65 00 78 00 65 00 63 00 69 00 73 00 69 00 20 00 74 00 65 00 6c 00 61 00 6b 00 69 00 68 00 } //01 00  Kegewivi wihosiwoboyude zerenobavasaxop vimoyotefen gor rot diwexow bevuxumicixe wovexecisi telakih
		$a_01_1 = {53 00 75 00 7a 00 6f 00 77 00 65 00 62 00 6f 00 20 00 67 00 75 00 73 00 69 00 64 00 65 00 6c 00 6f 00 72 00 20 00 6a 00 61 00 6c 00 65 00 6c 00 6f 00 67 00 69 00 6b 00 6f 00 74 00 20 00 6e 00 75 00 66 00 69 00 76 00 75 00 6c 00 6f 00 68 00 65 00 78 00 75 00 66 00 } //01 00  Suzowebo gusidelor jalelogikot nufivulohexuf
		$a_01_2 = {6a 00 56 00 69 00 76 00 6f 00 62 00 69 00 7a 00 69 00 68 00 6f 00 73 00 75 00 78 00 61 00 20 00 76 00 69 00 67 00 69 00 67 00 61 00 7a 00 61 00 70 00 65 00 67 00 75 00 64 00 20 00 66 00 69 00 63 00 75 00 63 00 61 00 66 00 6f 00 78 00 69 00 6d 00 75 00 20 00 6c 00 69 00 7a 00 69 00 6b 00 61 00 66 00 69 00 72 00 65 00 70 00 69 00 6a 00 6f 00 7a 00 20 00 78 00 65 00 6a 00 69 00 6a 00 20 00 74 00 69 00 6d 00 65 00 68 00 69 00 20 00 68 00 75 00 6a 00 6f 00 73 00 75 00 20 00 67 00 65 00 67 00 6f 00 62 00 61 00 72 00 65 00 79 00 69 00 78 00 69 00 6c 00 } //01 00  jVivobizihosuxa vigigazapegud ficucafoximu lizikafirepijoz xejij timehi hujosu gegobareyixil
		$a_01_3 = {46 00 6f 00 70 00 6f 00 6b 00 20 00 78 00 65 00 6b 00 75 00 66 00 69 00 73 00 69 00 20 00 72 00 65 00 6a 00 61 00 66 00 69 00 67 00 6f 00 79 00 6f 00 76 00 6f 00 6c 00 20 00 66 00 6f 00 63 00 75 00 74 00 75 00 62 00 65 00 20 00 63 00 6f 00 68 00 20 00 72 00 75 00 76 00 65 00 67 00 61 00 6d 00 65 00 20 00 6a 00 65 00 79 00 20 00 6c 00 6f 00 6a 00 61 00 74 00 69 00 76 00 20 00 7a 00 69 00 68 00 61 00 64 00 69 00 78 00 6f 00 62 00 61 00 79 00 75 00 66 00 75 00 } //01 00  Fopok xekufisi rejafigoyovol focutube coh ruvegame jey lojativ zihadixobayufu
		$a_01_4 = {44 00 6f 00 6c 00 65 00 72 00 69 00 79 00 69 00 } //00 00  Doleriyi
	condition:
		any of ($a_*)
 
}