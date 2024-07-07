
rule TrojanDropper_Win32_Agent_gen_FIY{
	meta:
		description = "TrojanDropper:Win32/Agent.gen!FIY,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 "
		
	strings :
		$a_00_0 = {60 6a 40 68 00 30 00 00 68 00 00 10 00 68 00 00 40 00 ff } //1
		$a_02_1 = {6a 02 6a 00 6a fc ff 90 01 03 50 00 ff 90 01 03 50 00 6a 00 68 90 01 02 50 00 6a 04 68 90 01 02 50 00 ff 90 01 03 50 00 ff 90 01 03 50 00 90 00 } //1
		$a_02_2 = {6a 02 6a 00 50 ff 90 01 03 50 00 ff 90 01 03 50 00 6a 00 68 90 01 02 50 00 6a 0c 68 90 01 02 50 00 ff 90 01 03 50 00 ff 90 01 03 50 00 90 02 20 68 90 01 02 50 00 68 00 04 00 00 90 02 01 ff 90 01 03 50 00 90 02 01 bf 90 01 02 50 00 90 02 01 b0 00 90 02 01 fc 90 02 01 f2 ae 90 02 01 4f 90 02 01 be b0 20 50 00 90 02 01 b9 03 00 00 00 90 00 } //1
		$a_01_3 = {8b 06 35 0d 0d 0d 0d 89 06 83 c6 04 e2 f2 be b0 20 50 00 b9 0c 00 00 00 f3 a4 } //1
		$a_02_4 = {6a 00 68 80 00 00 00 90 02 01 6a 03 90 02 01 6a 00 90 02 01 6a 01 90 02 01 68 00 00 00 80 90 02 01 68 90 01 02 50 00 90 02 01 ff 90 01 03 50 00 83 f8 ff 0f 90 00 } //1
		$a_02_5 = {6a 00 68 80 00 00 00 6a 03 6a 00 6a 00 68 00 00 00 40 ff 90 01 03 50 00 ff 90 01 03 50 00 01 05 90 01 02 50 00 83 3d 90 01 02 50 00 ff 75 d3 59 eb 16 90 00 } //1
		$a_02_6 = {50 00 83 c2 28 8b 02 03 05 90 01 02 50 00 c7 44 24 28 90 01 02 50 00 ff e0 61 6a 00 ff 15 90 01 02 50 00 90 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_01_3  & 1)*1+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1+(#a_02_6  & 1)*1) >=6
 
}