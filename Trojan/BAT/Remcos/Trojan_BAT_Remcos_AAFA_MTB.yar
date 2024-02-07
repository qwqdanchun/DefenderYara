
rule Trojan_BAT_Remcos_AAFA_MTB{
	meta:
		description = "Trojan:BAT/Remcos.AAFA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {07 17 58 0b 07 20 00 01 00 00 5d 0b 09 11 07 07 94 58 0d 09 20 00 01 00 00 5d 0d 11 07 07 94 13 05 11 07 07 11 07 09 94 9e 11 07 09 11 05 9e 11 07 11 07 07 94 11 07 09 94 58 20 00 01 00 00 5d 94 13 04 11 08 08 02 08 91 11 04 61 d2 9c 00 08 17 58 0c 08 02 8e 69 fe 04 13 0b 11 0b 2d a0 } //01 00 
		$a_01_1 = {4b 61 73 68 61 } //01 00  Kasha
		$a_01_2 = {53 61 73 68 61 } //01 00  Sasha
		$a_01_3 = {49 6e 76 6f 6b 65 } //01 00  Invoke
		$a_01_4 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_01_5 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_01_6 = {6d 00 61 00 6b 00 65 00 66 00 69 00 6c 00 2e 00 6d 00 61 00 6b 00 65 00 66 00 69 00 6c 00 } //01 00  makefil.makefil
		$a_01_7 = {64 00 73 00 64 00 73 00 67 00 73 00 64 00 67 00 64 00 73 00 67 00 64 00 73 00 } //00 00  dsdsgsdgdsgds
	condition:
		any of ($a_*)
 
}