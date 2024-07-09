
rule Worm_Win32_Pushbot_VV{
	meta:
		description = "Worm:Win32/Pushbot.VV,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_01_0 = {66 83 f8 41 74 32 66 83 f8 42 74 2c 66 83 f8 61 74 26 66 83 f8 62 74 20 8d 45 f8 50 ff d7 83 f8 02 74 0b 8d 45 f8 50 ff d7 83 f8 04 } //2
		$a_03_1 = {8a 04 37 33 c9 32 81 ?? ?? 40 00 41 88 04 37 81 f9 00 01 00 00 72 ee 83 3d ?? ?? 40 00 00 74 05 f6 d0 88 04 37 } //1
		$a_01_2 = {41 62 6f 75 74 20 74 6f 20 6b 69 6c 6c 20 3d 20 5b 25 6c 73 5d 2c 20 50 69 64 20 3d 20 5b 25 64 5d 2c 20 47 65 74 4c 61 73 74 45 72 72 6f 72 28 29 20 3d 20 5b 25 75 5d } //1 About to kill = [%ls], Pid = [%d], GetLastError() = [%u]
		$a_01_3 = {53 70 72 65 61 64 65 72 20 45 6e 61 62 6c 65 64 2c 20 49 6e 74 65 72 76 61 6c 20 3d 20 5b 25 64 5d 2c 20 4d 65 73 73 61 67 65 20 3d 20 5b 25 73 5d } //1 Spreader Enabled, Interval = [%d], Message = [%s]
		$a_01_4 = {49 6e 66 65 63 74 65 64 20 25 64 20 66 6f 6c 64 65 72 28 73 29 2c 20 6c 61 73 74 20 66 6f 6c 64 65 72 20 69 6e 66 65 63 74 65 64 3a 20 5b 20 25 6c 73 20 5d } //1 Infected %d folder(s), last folder infected: [ %ls ]
		$a_01_5 = {53 75 70 65 72 53 79 6e 00 00 00 00 41 74 74 61 63 6b 20 4f 6e 20 25 73 3a 25 69 20 43 6f 6d 70 6c 65 74 65 64 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}