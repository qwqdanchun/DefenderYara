
rule Backdoor_Win32_Momibot_gen_B{
	meta:
		description = "Backdoor:Win32/Momibot.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 06 00 00 "
		
	strings :
		$a_02_0 = {56 6a 14 6a 40 ff 90 90 ?? ?? 00 00 b9 ?? ?? ?? ?? 8b f0 e8 ?? ?? 00 00 35 57 34 98 12 50 a1 ?? ?? ?? ?? 68 ?? ?? ?? ?? 56 ff 90 90 ?? ?? 00 00 } //4
		$a_02_1 = {85 c0 74 63 a1 ?? ?? ?? ?? 53 83 c6 08 56 ff 90 90 ?? ?? 00 00 8b f8 8d 47 01 50 a1 90 09 0e 00 eb 73 68 ?? ?? ?? ?? 56 ff 90 90 ?? ?? 00 00 } //4
		$a_01_2 = {5c 64 6c 6c 63 61 63 68 65 5c 74 63 70 69 70 2e 73 79 73 00 5c 53 45 52 56 49 43 45 50 41 43 4b 46 49 4c 45 53 5c 49 33 38 36 5c 74 63 70 69 70 2e 73 79 73 00 } //1
		$a_01_3 = {4e 49 43 4b 20 25 73 0d 0a 55 53 45 52 20 25 73 20 22 25 73 22 20 22 25 73 22 20 3a 25 73 0d 0a 00 00 00 00 d7 f0 3a ea } //1
		$a_01_4 = {25 73 3b 25 64 3b 25 73 00 } //1
		$a_01_5 = {43 4f 4e 46 49 47 53 3a 00 } //1
	condition:
		((#a_02_0  & 1)*4+(#a_02_1  & 1)*4+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=3
 
}