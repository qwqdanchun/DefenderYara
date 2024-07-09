
rule Backdoor_Win32_Blackhole_Y{
	meta:
		description = "Backdoor:Win32/Blackhole.Y,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_01_0 = {6e 74 65 72 6e 65 74 20 41 63 63 6f 75 6e 74 20 4d 61 6e 61 67 65 72 5c 41 63 63 6f 75 6e 74 73 5c 00 00 00 48 54 54 50 4d 61 69 6c 20 55 73 65 72 20 4e 61 6d 65 00 00 ff ff } //1
		$a_02_1 = {66 74 70 3a 2f 2f ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 49 45 3a 50 61 73 73 77 6f 72 64 2d 50 72 6f 74 65 63 74 65 64 20 53 69 74 65 73 00 65 31 36 31 32 35 35 61 00 } //1
		$a_02_2 = {4b 2f 57 69 6e 58 50 2f 57 69 6e 32 30 30 33 20 4c 6f 67 69 6e 20 3e 3e ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 55 73 65 72 44 6f 6d 61 69 6e 20 20 3a 00 } //1
		$a_01_3 = {53 65 6e 64 50 73 77 5f 4b 65 79 6c 6f 67 5f 53 79 73 49 6e 66 6f 54 68 72 65 61 64 55 8b ec } //1
		$a_02_4 = {42 6c 61 63 6b [0-01] 48 6f 6c 65 32 30 30 } //1
		$a_01_5 = {45 78 50 6c 6f 52 65 52 2e 65 78 65 } //1 ExPloReR.exe
	condition:
		((#a_01_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_01_3  & 1)*1+(#a_02_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}