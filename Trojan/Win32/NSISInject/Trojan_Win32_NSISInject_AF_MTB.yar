
rule Trojan_Win32_NSISInject_AF_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.AF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {42 00 69 00 63 00 6f 00 6c 00 6f 00 72 00 65 00 64 00 5c 00 70 00 65 00 64 00 69 00 70 00 75 00 6c 00 61 00 74 00 65 00 5c 00 62 00 65 00 72 00 67 00 65 00 6e 00 73 00 65 00 72 00 65 00 2e 00 69 00 6e 00 69 00 } //1 Bicolored\pedipulate\bergensere.ini
		$a_01_1 = {44 00 69 00 61 00 62 00 6f 00 6c 00 65 00 70 00 74 00 69 00 63 00 5c 00 54 00 69 00 64 00 6e 00 64 00 65 00 6e 00 73 00 5c 00 54 00 72 00 61 00 67 00 69 00 63 00 6f 00 6d 00 69 00 63 00 61 00 6c 00 69 00 74 00 79 00 5c 00 46 00 6f 00 72 00 67 00 61 00 66 00 6c 00 65 00 72 00 2e 00 56 00 69 00 73 00 } //1 Diaboleptic\Tidndens\Tragicomicality\Forgafler.Vis
		$a_01_2 = {63 00 68 00 69 00 61 00 70 00 61 00 73 00 5c 00 45 00 6c 00 69 00 75 00 73 00 5c 00 50 00 6c 00 69 00 61 00 62 00 6c 00 65 00 2e 00 43 00 6f 00 77 00 } //1 chiapas\Elius\Pliable.Cow
		$a_01_3 = {55 00 6e 00 61 00 70 00 70 00 72 00 65 00 63 00 69 00 61 00 74 00 69 00 76 00 65 00 6e 00 65 00 73 00 73 00 2e 00 55 00 64 00 67 00 } //1 Unappreciativeness.Udg
		$a_01_4 = {53 00 70 00 61 00 64 00 65 00 72 00 73 00 5c 00 50 00 69 00 73 00 6f 00 6c 00 69 00 74 00 69 00 63 00 32 00 31 00 34 00 2e 00 69 00 6e 00 69 00 } //1 Spaders\Pisolitic214.ini
		$a_01_5 = {54 00 68 00 69 00 65 00 76 00 69 00 73 00 68 00 6c 00 79 00 5c 00 43 00 72 00 79 00 70 00 74 00 6f 00 67 00 72 00 61 00 70 00 68 00 61 00 6c 00 5c 00 4d 00 6f 00 6e 00 6f 00 62 00 61 00 73 00 69 00 63 00 69 00 74 00 79 00 5c 00 42 00 68 00 31 00 32 00 37 00 } //1 Thievishly\Cryptographal\Monobasicity\Bh127
		$a_01_6 = {52 00 65 00 63 00 65 00 70 00 69 00 73 00 73 00 65 00 72 00 5c 00 76 00 61 00 61 00 64 00 6f 00 6d 00 72 00 61 00 61 00 64 00 65 00 72 00 6e 00 65 00 73 00 5c 00 4f 00 63 00 74 00 6f 00 6e 00 61 00 6c 00 32 00 34 00 33 00 2e 00 46 00 6f 00 72 00 } //1 Recepisser\vaadomraadernes\Octonal243.For
		$a_01_7 = {48 00 76 00 69 00 73 00 6c 00 65 00 6e 00 64 00 65 00 73 00 2e 00 45 00 6b 00 73 00 } //1 Hvislendes.Eks
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}