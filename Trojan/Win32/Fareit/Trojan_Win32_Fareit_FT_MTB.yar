
rule Trojan_Win32_Fareit_FT_MTB{
	meta:
		description = "Trojan:Win32/Fareit.FT!MTB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 00 53 00 54 00 4f 00 6e 00 73 00 6f 00 66 00 74 00 20 00 4c 00 43 00 64 00 2e 00 } //01 00  ASTOnsoft LCd.
		$a_01_1 = {63 00 63 00 20 00 54 00 4f 00 4f 00 4c 00 53 00 } //01 00  cc TOOLS
		$a_01_2 = {4d 00 45 00 54 00 41 00 47 00 45 00 65 00 6b 00 2c 00 } //01 00  METAGEek,
		$a_01_3 = {54 00 45 00 4c 00 45 00 47 00 72 00 61 00 6d 00 20 00 4d 00 45 00 53 00 53 00 45 00 6e 00 67 00 65 00 72 00 } //01 00  TELEGram MESSEnger
		$a_01_4 = {4e 00 4f 00 52 00 4d 00 41 00 6e 00 20 00 53 00 41 00 46 00 45 00 67 00 72 00 6f 00 75 00 6e 00 64 00 20 00 41 00 61 00 } //01 00  NORMAn SAFEground Aa
		$a_01_5 = {45 00 50 00 53 00 4f 00 4e 00 } //00 00  EPSON
	condition:
		any of ($a_*)
 
}