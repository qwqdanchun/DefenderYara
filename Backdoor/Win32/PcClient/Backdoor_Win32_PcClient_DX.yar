
rule Backdoor_Win32_PcClient_DX{
	meta:
		description = "Backdoor:Win32/PcClient.DX,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0f 00 00 "
		
	strings :
		$a_02_0 = {3d 25 64 3b ?? ?? ?? ?? 69 64 3d 25 73 } //2
		$a_02_1 = {47 6c 6f 62 61 6c 5c 25 73 2d ?? ?? ?? 2d } //2
		$a_02_2 = {70 61 73 73 [0-07] 6e 61 6d 65 [0-07] 70 6f 72 74 } //2
		$a_00_3 = {73 65 72 76 65 72 70 6f 72 74 } //1 serverport
		$a_00_4 = {6d 79 74 68 72 65 61 64 69 64 } //1 mythreadid
		$a_00_5 = {6d 79 73 65 72 76 65 72 61 64 64 72 } //1 myserveraddr
		$a_00_6 = {50 4f 53 54 20 68 74 74 70 3a 2f 2f 25 73 2f } //1 POST http://%s/
		$a_00_7 = {64 2f 25 64 2e 6a 73 70 00 } //1
		$a_00_8 = {73 79 73 74 65 6d 5c 63 75 72 72 65 6e 74 63 6f 6e 74 72 6f 6c 73 65 74 5c 73 65 72 76 69 63 65 73 5c } //1 system\currentcontrolset\services\
		$a_00_9 = {25 30 32 64 3a 25 30 32 64 3a 25 30 32 64 5d } //1 %02d:%02d:%02d]
		$a_00_10 = {25 30 35 78 2e 74 6e 70 00 } //1
		$a_01_11 = {25 73 2d 6b c7 40 04 65 79 2d 65 } //4
		$a_01_12 = {c7 00 57 69 6e 53 c7 40 04 74 61 30 00 61 eb 00 } //3
		$a_01_13 = {4d 61 69 6e c7 40 04 57 6f 72 6b } //3
		$a_01_14 = {c7 00 56 45 4e 54 61 } //2
	condition:
		((#a_02_0  & 1)*2+(#a_02_1  & 1)*2+(#a_02_2  & 1)*2+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_01_11  & 1)*4+(#a_01_12  & 1)*3+(#a_01_13  & 1)*3+(#a_01_14  & 1)*2) >=10
 
}