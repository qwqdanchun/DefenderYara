
rule PWS_Win32_Zbot_gen_AM{
	meta:
		description = "PWS:Win32/Zbot.gen!AM,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 "
		
	strings :
		$a_01_0 = {64 65 6c 20 22 25 73 22 0d 0a 69 66 20 65 78 69 73 74 20 22 25 73 22 20 67 6f 74 6f 20 64 0d 0a } //1
		$a_01_1 = {7e 29 8b 04 8a 85 c0 74 1c 66 83 38 2d 75 16 0f b7 40 02 83 f8 6e 74 0a 83 f8 74 75 08 83 cb 08 eb 03 } //1
		$a_03_2 = {c1 eb 02 f6 d3 80 e3 01 8a cb e8 ?? ?? ff ff 84 c0 74 e6 33 f6 f6 05 } //1
		$a_03_3 = {32 c2 42 88 04 39 66 3b 14 f5 ?? ?? 40 00 72 dc 0f b7 04 f5 ?? ?? 40 00 c6 04 38 00 } //1
		$a_03_4 = {8b 72 28 b9 18 00 00 00 33 ff 33 c0 ac 3c 61 7c ?? 2c 20 c1 cf 0d 03 f8 e2 f0 81 ff 5b bc 4a 6a 8b 42 10 8b 12 75 ?? 5f 5e c3 } //1
		$a_00_5 = {66 33 c8 66 33 cf b8 ff 00 00 00 66 23 c8 47 66 89 0c 53 66 3b 3c f5 } //1
		$a_03_6 = {eb 07 83 25 ?? ?? ?? ?? 00 83 3d ?? ?? ?? ?? 00 0f 84 ?? ?? 00 00 a1 ?? ?? ?? ?? a9 e0 0f 00 00 0f 84 ?? ?? 00 00 a9 00 08 00 00 74 ?? (b9|68) b8 01 00 00 } //1
		$a_03_7 = {eb 08 33 db 89 ?? ?? ?? ?? 00 83 3d ?? ?? ?? ?? 00 0f 84 ?? 00 00 00 a1 ?? ?? ?? ?? a9 e0 0f 00 00 0f 84 ?? 00 00 00 a8 20 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_00_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1) >=4
 
}