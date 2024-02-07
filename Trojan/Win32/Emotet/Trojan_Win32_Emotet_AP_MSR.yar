
rule Trojan_Win32_Emotet_AP_MSR{
	meta:
		description = "Trojan:Win32/Emotet.AP!MSR,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 00 69 00 74 00 6d 00 61 00 70 00 43 00 61 00 73 00 65 00 2e 00 65 00 78 00 65 00 } //01 00  BitmapCase.exe
		$a_01_1 = {74 00 68 00 65 00 62 00 6c 00 61 00 63 00 6b 00 68 00 61 00 6e 00 64 00 20 00 42 00 69 00 74 00 6d 00 61 00 70 00 43 00 61 00 73 00 65 00 } //01 00  theblackhand BitmapCase
		$a_01_2 = {41 00 70 00 70 00 20 00 74 00 6f 00 20 00 68 00 69 00 64 00 65 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 69 00 6e 00 20 00 42 00 4d 00 50 00 20 00 66 00 69 00 6c 00 65 00 73 00 } //01 00  App to hide files in BMP files
		$a_01_3 = {69 2f 48 70 32 54 6d 31 2f 50 51 78 4d 31 } //01 00  i/Hp2Tm1/PQxM1
		$a_01_4 = {69 6e 69 73 74 72 61 74 6f 72 } //01 00  inistrator
		$a_01_5 = {69 77 62 31 52 62 73 6a 6f 33 4b 73 5a 34 41 31 } //00 00  iwb1Rbsjo3KsZ4A1
	condition:
		any of ($a_*)
 
}