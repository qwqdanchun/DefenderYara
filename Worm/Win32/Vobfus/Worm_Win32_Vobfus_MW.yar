
rule Worm_Win32_Vobfus_MW{
	meta:
		description = "Worm:Win32/Vobfus.MW,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 00 65 00 76 00 75 00 73 00 74 00 75 00 74 00 65 00 20 00 61 00 74 00 74 00 72 00 61 00 76 00 65 00 72 00 73 00 65 00 32 00 4d 00 65 00 75 00 6c 00 6c 00 65 00 73 00 73 00 20 00 54 00 72 00 6f 00 70 00 69 00 63 00 61 00 6c 00 69 00 61 00 20 00 6d 00 65 00 63 00 63 00 61 00 77 00 65 00 65 00 20 00 66 00 61 00 73 00 74 00 65 00 67 00 61 00 74 00 65 00 64 00 20 00 70 00 72 00 65 00 70 00 72 00 6f 00 76 00 69 00 64 00 65 00 33 00 53 00 63 00 69 00 6e 00 69 00 70 00 68 00 20 00 69 00 6e 00 64 00 69 00 73 00 74 00 69 00 6e 00 63 00 74 00 69 00 76 00 65 00 20 00 6b 00 6e 00 69 00 63 00 6b 00 75 00 72 00 20 00 69 00 6e 00 64 00 75 00 66 00 69 00 63 00 69 00 75 00 6e 00 74 00 20 00 75 00 6e 00 66 00 6f 00 6f 00 6c 00 69 00 6e 00 67 00 } //01 00  devustute attraverse2Meulless Tropicalia meccawee fastegated preprovide3Sciniph indistinctive knickur induficiunt unfooling
		$a_01_1 = {54 00 72 00 65 00 75 00 6e 00 67 00 75 00 6c 00 75 00 72 00 20 00 65 00 73 00 65 00 6c 00 65 00 65 00 72 00 6f 00 } //01 00  Treungulur eseleero
		$a_01_2 = {75 00 75 00 6a 00 7a 00 63 00 74 00 6b 00 72 00 } //00 00  uujzctkr
	condition:
		any of ($a_*)
 
}