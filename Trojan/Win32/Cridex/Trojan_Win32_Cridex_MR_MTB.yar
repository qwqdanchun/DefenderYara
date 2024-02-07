
rule Trojan_Win32_Cridex_MR_MTB{
	meta:
		description = "Trojan:Win32/Cridex.MR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {56 00 70 00 72 00 69 00 76 00 61 00 63 00 79 00 77 00 65 00 72 00 65 00 37 00 31 00 4e 00 42 00 69 00 67 00 67 00 65 00 72 00 6f 00 66 00 61 00 6e 00 64 00 70 00 72 00 65 00 76 00 65 00 6e 00 74 00 69 00 76 00 65 00 } //01 00  Vprivacywere71NBiggerofandpreventive
		$a_01_1 = {4d 00 46 00 63 00 61 00 6e 00 70 00 4f 00 6e 00 31 00 52 00 } //01 00  MFcanpOn1R
		$a_01_2 = {63 00 70 00 65 00 61 00 6e 00 75 00 74 00 61 00 49 00 74 00 6f 00 4f 00 6e 00 } //01 00  cpeanutaItoOn
		$a_01_3 = {48 00 73 00 74 00 72 00 61 00 74 00 65 00 67 00 79 00 6f 00 66 00 } //01 00  Hstrategyof
		$a_01_4 = {47 00 45 00 74 00 68 00 65 00 43 00 4e 00 45 00 54 00 74 00 68 00 61 00 74 00 70 00 77 00 43 00 68 00 72 00 6f 00 6d 00 65 00 } //01 00  GEtheCNETthatpwChrome
		$a_01_5 = {62 00 75 00 69 00 6c 00 64 00 73 00 68 00 61 00 76 00 65 00 61 00 6e 00 64 00 62 00 52 00 77 00 69 00 73 00 74 00 68 00 65 00 52 00 6c 00 6f 00 63 00 61 00 6c 00 } //01 00  buildshaveandbRwistheRlocal
		$a_01_6 = {66 00 6f 00 72 00 62 00 65 00 52 00 31 00 67 00 33 00 } //01 00  forbeR1g3
		$a_01_7 = {69 00 4c 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 73 00 4a 00 55 00 61 00 6e 00 64 00 54 00 68 00 65 00 61 00 72 00 63 00 68 00 69 00 74 00 65 00 63 00 74 00 75 00 72 00 65 00 6c 00 6f 00 76 00 65 00 72 00 } //01 00  iLwebsitesJUandThearchitecturelover
		$a_01_8 = {66 00 6f 00 66 00 43 00 68 00 72 00 6f 00 6d 00 65 00 50 00 61 00 67 00 65 00 4e 00 6f 00 6e 00 6f 00 54 00 79 00 72 00 61 00 6e 00 6e 00 6f 00 73 00 61 00 75 00 72 00 75 00 73 00 52 00 61 00 64 00 69 00 6f 00 } //01 00  fofChromePageNonoTyrannosaurusRadio
		$a_01_9 = {6d 00 79 00 73 00 63 00 6f 00 6f 00 62 00 79 00 4c 00 76 00 69 00 61 00 6c 00 69 00 62 00 72 00 61 00 72 00 69 00 65 00 73 00 4d 00 66 00 61 00 70 00 70 00 65 00 61 00 72 00 61 00 6e 00 63 00 65 00 } //01 00  myscoobyLvialibrariesMfappearance
		$a_01_10 = {4a 00 6c 00 6c 00 4a 00 61 00 6c 00 6c 00 74 00 6f 00 } //00 00  JllJallto
	condition:
		any of ($a_*)
 
}