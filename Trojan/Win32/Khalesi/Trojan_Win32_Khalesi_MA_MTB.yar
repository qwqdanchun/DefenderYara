
rule Trojan_Win32_Khalesi_MA_MTB{
	meta:
		description = "Trojan:Win32/Khalesi.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {17 30 d0 38 96 90 01 04 a6 a1 90 00 } //01 00 
		$a_03_1 = {02 f8 69 1e 90 01 04 48 90 0a 0f 00 ff cc 31 90 02 0c 9b 96 f1 ba 90 01 04 81 ff 90 01 04 f0 47 9f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Khalesi_MA_MTB_2{
	meta:
		description = "Trojan:Win32/Khalesi.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {68 88 ee 4a 00 6a 40 6a 04 68 d8 97 49 00 ff 15 18 93 49 00 0f b6 05 d0 97 49 00 a2 cc 97 49 00 0f b6 05 d1 97 49 00 68 88 ee 4a 00 ff 35 88 ee 4a 00 a2 cd 97 49 00 0f b6 05 d2 97 49 00 a2 ce 97 49 00 0f b6 05 d3 97 49 00 6a 04 68 d8 97 49 00 a2 cf 97 49 } //01 00 
		$a_01_1 = {2f 66 6f 72 63 65 } //01 00  /force
		$a_01_2 = {53 65 74 44 65 66 61 75 6c 74 4d 6f 75 73 65 53 70 65 65 64 } //01 00  SetDefaultMouseSpeed
		$a_01_3 = {50 6f 73 74 4d 65 73 73 61 67 65 } //00 00  PostMessage
	condition:
		any of ($a_*)
 
}