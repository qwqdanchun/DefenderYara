
rule Trojan_BAT_RedLineStealer_AX_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.AX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {72 2f 00 00 70 28 0a 90 01 02 06 1d 3a 43 90 01 02 00 26 20 00 90 01 02 00 7e 33 90 01 02 04 7b 44 90 01 02 04 39 c9 90 01 02 ff 26 20 00 90 01 01 00 00 90 00 } //01 00 
		$a_03_1 = {69 18 3a 17 90 01 02 00 26 26 26 38 0a 90 01 02 00 38 e7 90 01 02 ff 38 e2 90 01 02 ff 38 dd 90 01 02 ff 28 35 90 01 02 0a 38 e7 90 01 02 ff 90 0a 2c 00 02 16 02 8e 90 00 } //01 00 
		$a_01_2 = {48 74 74 70 57 65 62 52 65 73 70 6f 6e 73 65 } //01 00  HttpWebResponse
		$a_01_3 = {57 65 62 52 65 73 70 6f 6e 73 65 } //01 00  WebResponse
		$a_01_4 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_01_5 = {50 75 73 68 56 61 6c } //01 00  PushVal
		$a_81_6 = {33 37 2e 30 2e 31 31 2e 31 36 34 } //00 00  37.0.11.164
	condition:
		any of ($a_*)
 
}