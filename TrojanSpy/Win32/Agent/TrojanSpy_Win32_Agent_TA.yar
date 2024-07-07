
rule TrojanSpy_Win32_Agent_TA{
	meta:
		description = "TrojanSpy:Win32/Agent.TA,SIGNATURE_TYPE_PEHSTR_EXT,33 00 33 00 07 00 00 "
		
	strings :
		$a_00_0 = {00 32 35 30 00 } //10
		$a_00_1 = {00 32 32 30 00 } //10
		$a_00_2 = {00 71 75 69 74 0d 0a 00 } //10
		$a_00_3 = {00 25 73 25 73 0d 0a 00 } //10
		$a_00_4 = {00 25 61 2c 20 25 64 20 25 62 20 25 59 20 25 48 3a 25 4d 3a 25 53 20 00 00 25 64 30 30 00 00 00 } //10
		$a_02_5 = {6a 00 68 03 00 1f 00 ff 15 90 01 04 85 c0 74 90 01 01 50 ff 15 90 01 04 90 03 03 05 33 c0 5e 5f 5e 33 c0 5b 8b e5 5d c2 0c 00 8d 90 01 02 fe ff ff 68 04 01 00 00 50 6a 00 ff 15 90 01 04 8d 90 01 02 fe ff ff 51 90 00 } //1
		$a_02_6 = {01 00 00 53 56 57 6a 01 58 39 45 0c 0f 85 90 01 02 00 00 33 db 68 90 01 04 53 68 03 00 1f 00 ff 15 90 01 04 3b c3 74 0c 50 ff 15 90 01 04 e9 90 01 02 00 00 8d 90 01 02 fe ff ff 68 04 01 00 00 50 53 ff 15 90 01 04 8d 90 01 02 fe ff ff 50 e8 90 01 04 be 90 01 04 8d 7d f0 a5 a5 a5 59 90 00 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_02_5  & 1)*1+(#a_02_6  & 1)*1) >=51
 
}