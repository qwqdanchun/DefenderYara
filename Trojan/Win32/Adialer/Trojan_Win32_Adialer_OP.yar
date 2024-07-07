
rule Trojan_Win32_Adialer_OP{
	meta:
		description = "Trojan:Win32/Adialer.OP,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1b 00 0b 00 00 "
		
	strings :
		$a_00_0 = {68 74 74 70 3a 2f 2f 31 39 34 2e 31 37 38 2e 31 31 32 2e 32 30 32 } //3 http://194.178.112.202
		$a_00_1 = {5e 6a 6a 66 30 25 25 27 2f 2a 24 27 2d 2e 24 27 27 28 24 28 26 28 } //3 ^jjf0%%'/*$'-.$''($(&(
		$a_02_2 = {73 61 74 5f 69 74 5f 90 05 05 03 30 2d 39 5f 30 5f 30 32 30 32 5f 30 30 30 37 90 00 } //1
		$a_02_3 = {38 39 32 5f 69 74 5f 90 05 05 03 30 2d 39 5f 30 5f 30 32 30 32 5f 30 30 30 37 90 00 } //1
		$a_02_4 = {31 37 38 5f 69 74 5f 90 05 05 03 30 2d 39 5f 30 5f 30 32 30 32 5f 30 30 30 37 90 00 } //1
		$a_02_5 = {31 30 33 33 30 30 90 04 0b 03 30 2d 39 90 00 } //1
		$a_02_6 = {38 39 32 32 31 31 90 04 03 03 30 2d 39 90 00 } //1
		$a_02_7 = {38 39 39 30 32 30 90 04 03 03 30 2d 39 90 00 } //1
		$a_02_8 = {31 37 38 32 30 37 32 30 90 04 02 03 30 2d 39 90 00 } //1
		$a_00_9 = {52 61 73 44 69 61 6c 41 } //10 RasDialA
		$a_00_10 = {52 61 73 48 61 6e 67 55 70 41 } //10 RasHangUpA
	condition:
		((#a_00_0  & 1)*3+(#a_00_1  & 1)*3+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1+(#a_02_6  & 1)*1+(#a_02_7  & 1)*1+(#a_02_8  & 1)*1+(#a_00_9  & 1)*10+(#a_00_10  & 1)*10) >=27
 
}
rule Trojan_Win32_Adialer_OP_2{
	meta:
		description = "Trojan:Win32/Adialer.OP,SIGNATURE_TYPE_PEHSTR,69 00 69 00 04 00 00 "
		
	strings :
		$a_01_0 = {89 5d f8 ad 8b d8 03 da ad 85 c0 74 3f 8b c8 83 e9 08 85 c9 74 ed 66 c7 45 fe ff ff 66 ad 66 83 7d fe ff 74 04 } //50
		$a_01_1 = {8b 75 fc 8b 4d 0c 0f b6 36 c1 e1 08 0b ce c1 e0 08 ff 45 fc 89 4d 0c 8b 0c 93 8b f0 c1 ee 0b 0f af f1 39 75 0c 73 15 8b c6 be 00 08 00 00 2b f1 c1 ee 05 03 f1 89 34 93 03 d2 eb 16 } //50
		$a_01_2 = {00 45 76 74 53 68 75 74 64 6f 77 6e 00 45 76 74 53 74 61 72 74 75 70 00 69 6e 73 74 00 72 75 6e 00 74 65 73 00 } //5
		$a_01_3 = {00 69 6e 73 74 00 69 6e 73 74 32 00 6d 6f 75 6e 74 00 73 74 61 72 74 75 70 00 74 65 73 00 } //5 椀獮t湩瑳2潭湵t瑳牡畴p整s
	condition:
		((#a_01_0  & 1)*50+(#a_01_1  & 1)*50+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5) >=105
 
}