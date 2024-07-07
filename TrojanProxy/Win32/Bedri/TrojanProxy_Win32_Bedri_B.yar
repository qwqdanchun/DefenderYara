
rule TrojanProxy_Win32_Bedri_B{
	meta:
		description = "TrojanProxy:Win32/Bedri.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 "
		
	strings :
		$a_03_0 = {50 6a 00 68 03 00 1f 00 ff 15 90 01 04 89 85 90 01 02 ff ff 83 bd 90 01 02 ff ff 00 74 90 09 1b 00 c6 85 90 01 02 ff ff 30 c6 85 90 01 02 ff ff 31 c6 85 90 01 02 ff ff 00 8d 85 90 01 02 ff ff 90 00 } //2
		$a_03_1 = {0f be 02 83 f8 2f 74 11 8b 8d 90 01 02 ff ff 83 e9 01 89 8d 90 01 02 ff ff eb e1 90 00 } //1
		$a_03_2 = {ff ff 73 c6 85 90 01 02 ff ff 30 c6 85 90 01 02 ff ff 63 c6 85 90 01 02 ff ff 6b c6 85 90 01 02 ff ff 73 c6 85 90 01 02 ff ff 39 90 00 } //1
		$a_00_3 = {62 6c 61 63 6b 5f 73 74 6f 63 6b 69 6e 67 00 } //1
		$a_01_4 = {44 65 6c 00 62 63 63 00 6e 75 6c 6c 00 } //1
		$a_01_5 = {c6 45 ec 73 c6 45 ed 30 c6 45 ee 63 c6 45 ef 6b c6 45 f0 73 c6 45 f1 39 c6 45 f2 72 c6 45 f3 6f c6 45 f4 78 } //2
		$a_03_6 = {50 6a 00 68 03 00 1f 00 ff 15 90 01 04 89 45 90 01 01 83 7d 90 01 01 00 74 90 09 1b 00 c6 85 90 01 02 ff ff 30 c6 85 90 01 02 ff ff 31 80 a5 90 01 02 ff ff 00 8d 85 90 01 02 ff ff 90 00 } //2
		$a_03_7 = {50 6a 00 68 03 00 1f 00 ff 15 90 01 04 89 45 90 01 01 83 7d 90 01 01 00 74 90 09 0f 00 c6 45 90 01 01 30 c6 45 90 01 01 31 90 03 02 02 c6 45 80 65 90 01 01 00 8d 45 90 00 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*2+(#a_03_6  & 1)*2+(#a_03_7  & 1)*2) >=4
 
}