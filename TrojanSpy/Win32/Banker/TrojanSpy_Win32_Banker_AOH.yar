
rule TrojanSpy_Win32_Banker_AOH{
	meta:
		description = "TrojanSpy:Win32/Banker.AOH,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 0e 00 00 "
		
	strings :
		$a_03_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 75 00 73 00 65 00 72 00 2e 00 71 00 7a 00 6f 00 6e 00 65 00 2e 00 71 00 71 00 2e 00 63 00 6f 00 6d 00 2f 90 04 10 04 30 2d 39 00 90 00 } //10
		$a_01_1 = {73 65 6c 65 63 74 20 2a 20 66 72 6f 6d 20 75 72 6c 73 20 6f 72 64 65 72 20 62 79 20 6c 61 73 74 5f 76 69 73 69 74 5f 74 69 6d 65 20 44 45 53 43 20 6c 69 6d 69 74 20 30 2c 31 30 3b } //3 select * from urls order by last_visit_time DESC limit 0,10;
		$a_01_2 = {63 6f 75 6e 74 2f 69 2f 61 64 64 49 6e 73 74 61 6c 6c 2e 61 63 74 69 6f 6e 3f 70 61 72 61 6d 73 3d 7b 22 73 79 73 74 65 6d 74 79 70 65 3a } //3 count/i/addInstall.action?params={"systemtype:
		$a_01_3 = {00 00 49 00 6e 00 69 00 74 00 65 00 63 00 68 00 53 00 48 00 54 00 54 00 50 00 54 00 72 00 61 00 79 00 41 00 67 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 00 00 } //2
		$a_01_4 = {00 00 6e 00 6f 00 73 00 73 00 76 00 63 00 2e 00 65 00 78 00 65 00 00 00 } //2
		$a_01_5 = {00 00 6b 00 62 00 73 00 74 00 61 00 72 00 00 00 } //1
		$a_01_6 = {00 00 6b 00 66 00 63 00 63 00 00 00 } //1
		$a_01_7 = {00 00 77 00 6f 00 6f 00 72 00 69 00 62 00 61 00 6e 00 6b 00 00 00 } //1
		$a_01_8 = {00 00 73 00 68 00 69 00 6e 00 68 00 61 00 6e 00 00 00 } //1
		$a_01_9 = {00 00 6b 00 6e 00 62 00 61 00 6e 00 6b 00 00 00 } //1
		$a_01_10 = {00 00 6e 00 6f 00 6e 00 67 00 68 00 79 00 75 00 70 00 00 00 } //1
		$a_01_11 = {00 00 62 00 75 00 73 00 61 00 6e 00 62 00 61 00 6e 00 6b 00 00 00 } //1
		$a_01_12 = {00 00 68 00 61 00 6e 00 61 00 62 00 61 00 6e 00 6b 00 00 00 } //1
		$a_01_13 = {00 00 6a 00 62 00 62 00 61 00 6e 00 6b 00 00 00 } //1
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=22
 
}