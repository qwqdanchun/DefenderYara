
rule Trojan_Win32_Dinwod_RPY_MTB{
	meta:
		description = "Trojan:Win32/Dinwod.RPY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 65 73 74 2e 62 65 73 74 68 6f 74 65 6c 33 36 30 2e 63 6f 6d } //01 00  test.besthotel360.com
		$a_01_1 = {70 75 70 70 65 74 2e 54 78 74 } //01 00  puppet.Txt
		$a_01_2 = {56 4d 50 72 6f 74 65 63 74 20 62 65 67 69 6e } //01 00  VMProtect begin
		$a_01_3 = {53 6c 65 65 70 } //01 00  Sleep
		$a_01_4 = {47 65 74 54 69 63 6b 43 6f 75 6e 74 } //01 00  GetTickCount
		$a_01_5 = {48 74 74 70 4f 70 65 6e 52 65 71 75 65 73 74 41 } //01 00  HttpOpenRequestA
		$a_01_6 = {4d 6f 7a 69 6c 6c 61 2f 34 2e 30 } //00 00  Mozilla/4.0
	condition:
		any of ($a_*)
 
}