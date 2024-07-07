
rule TrojanDropper_Linux_Bartallex_B{
	meta:
		description = "TrojanDropper:Linux/Bartallex.B,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {3d 20 43 68 72 28 31 30 34 29 20 2b 20 43 68 72 28 31 31 36 29 20 2b 20 43 68 72 28 31 31 36 29 20 2b 20 43 68 72 28 31 31 32 29 20 2b 20 43 68 72 28 35 38 29 20 2b 20 43 68 72 28 34 37 29 20 2b 20 43 68 72 28 34 37 29 20 2b 20 43 68 72 28 31 31 35 29 20 2b 20 43 68 72 28 39 37 29 20 2b 20 43 68 72 28 31 31 38 29 20 2b 20 43 68 72 28 31 30 31 29 20 2b 20 43 68 72 28 31 31 32 29 20 2b 20 43 68 72 28 31 30 35 29 20 2b 20 43 68 72 28 39 39 29 20 2b 20 43 68 72 28 34 36 29 20 2b 20 43 68 72 28 31 31 35 29 20 2b 20 43 68 72 28 31 31 37 29 20 2b 20 43 68 72 28 34 37 29 } //1 = Chr(104) + Chr(116) + Chr(116) + Chr(112) + Chr(58) + Chr(47) + Chr(47) + Chr(115) + Chr(97) + Chr(118) + Chr(101) + Chr(112) + Chr(105) + Chr(99) + Chr(46) + Chr(115) + Chr(117) + Chr(47)
		$a_01_1 = {43 68 72 28 37 33 29 20 2b 20 43 68 72 28 37 38 29 20 2b 20 43 68 72 28 36 37 29 20 2b 20 43 68 72 28 37 36 29 20 2b 20 43 68 72 28 38 35 29 20 2b 20 43 68 72 28 36 38 29 20 2b 20 43 68 72 28 36 39 29 20 2b 20 43 68 72 28 38 30 29 20 2b 20 43 68 72 28 37 33 29 20 2b 20 43 68 72 28 36 37 29 20 2b 20 43 68 72 28 38 34 29 20 2b 20 43 68 72 28 38 35 29 20 2b 20 43 68 72 28 38 32 29 20 2b 20 43 68 72 28 36 39 29 20 2b 20 43 68 72 28 33 32 29 20 2b 20 43 68 72 28 33 32 29 20 2b 20 43 68 72 28 33 34 29 } //1 Chr(73) + Chr(78) + Chr(67) + Chr(76) + Chr(85) + Chr(68) + Chr(69) + Chr(80) + Chr(73) + Chr(67) + Chr(84) + Chr(85) + Chr(82) + Chr(69) + Chr(32) + Chr(32) + Chr(34)
		$a_01_2 = {3d 20 22 26 48 22 20 2b } //1 = "&H" +
		$a_01_3 = {46 6f 72 20 42 69 6e 61 72 79 20 41 63 63 65 73 73 20 52 65 61 64 20 57 72 69 74 65 20 41 73 } //1 For Binary Access Read Write As
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}