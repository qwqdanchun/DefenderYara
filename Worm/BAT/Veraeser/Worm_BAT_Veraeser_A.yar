
rule Worm_BAT_Veraeser_A{
	meta:
		description = "Worm:BAT/Veraeser.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 65 6e 64 32 55 73 62 2e 65 78 65 } //01 00  Send2Usb.exe
		$a_01_1 = {74 69 6d 65 72 5f 75 73 62 5f 54 69 63 6b } //01 00  timer_usb_Tick
		$a_01_2 = {63 68 55 73 62 } //01 00  chUsb
		$a_01_3 = {41 64 64 53 74 61 72 74 55 70 4b 65 79 } //01 00  AddStartUpKey
		$a_01_4 = {73 65 61 72 63 68 55 73 62 } //01 00  searchUsb
		$a_01_5 = {5b 00 2a 00 46 00 69 00 6c 00 65 00 53 00 69 00 7a 00 65 00 2a 00 5d 00 } //01 00  [*FileSize*]
		$a_01_6 = {2e 00 73 00 65 00 6e 00 64 00 70 00 72 00 6f 00 78 00 79 00 } //01 00  .sendproxy
		$a_01_7 = {2f 00 2f 00 54 00 65 00 6d 00 70 00 49 00 6e 00 66 00 6f 00 2e 00 68 00 74 00 6d 00 6c 00 } //01 00  //TempInfo.html
		$a_01_8 = {66 00 74 00 70 00 3a 00 2f 00 2f 00 33 00 31 00 2e 00 31 00 37 00 30 00 2e 00 31 00 36 00 37 00 2e 00 39 00 32 00 2f 00 2f 00 } //00 00  ftp://31.170.167.92//
		$a_00_9 = {5d 04 00 00 } //b7 14 
	condition:
		any of ($a_*)
 
}