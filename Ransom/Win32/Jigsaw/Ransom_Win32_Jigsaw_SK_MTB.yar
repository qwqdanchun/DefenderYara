
rule Ransom_Win32_Jigsaw_SK_MTB{
	meta:
		description = "Ransom:Win32/Jigsaw.SK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {4a 00 69 00 67 00 73 00 61 00 77 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00  Jigsaw.Resources
		$a_01_1 = {41 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 20 00 61 00 72 00 65 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 62 00 79 00 20 00 74 00 68 00 65 00 20 00 31 00 37 00 38 00 39 00 20 00 72 00 61 00 6e 00 73 00 6f 00 6d 00 77 00 61 00 72 00 65 00 } //01 00  All your file are encrypted by the 1789 ransomware
		$a_01_2 = {46 00 75 00 63 00 6b 00 74 00 68 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //00 00  FucktheSystem
	condition:
		any of ($a_*)
 
}