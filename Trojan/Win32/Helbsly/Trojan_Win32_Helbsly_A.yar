
rule Trojan_Win32_Helbsly_A{
	meta:
		description = "Trojan:Win32/Helbsly.A,SIGNATURE_TYPE_PEHSTR_EXT,14 00 10 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {74 1a 8d 84 24 0c 06 00 00 53 48 8a 1c 08 80 f3 27 88 1c 08 49 75 f4 } //05 00 
		$a_01_1 = {df e0 f6 c4 01 74 3d 8d 4c 24 0c 6a 00 51 8b fe 83 c9 ff 33 c0 f2 ae 8b 5d 08 8b 54 24 1c } //05 00 
		$a_03_2 = {3b c3 74 2f 8d 8c 24 94 00 00 00 51 68 90 01 02 40 00 50 e8 90 01 02 00 00 8a 84 24 a0 00 00 00 83 c4 0c 3c 2d 75 07 90 00 } //05 00 
		$a_01_3 = {85 f6 7e 17 8a 54 24 10 8b 4c 24 08 53 8a 1c 08 32 da 88 1c 08 40 3b c6 7c f3 } //05 00 
		$a_01_4 = {8d bc 24 14 04 00 00 c1 e9 02 f3 a5 8b ca 68 92 00 00 00 83 e1 03 8d 84 24 18 04 00 00 53 50 f3 a4 e8 } //01 00 
		$a_01_5 = {76 64 70 6c 75 67 69 6e 2e 64 6c 6c 00 76 64 70 6c 75 67 69 6e 5f 73 74 61 72 74 75 70 00 } //01 00  摶汰杵湩搮汬瘀灤畬楧彮瑳牡畴p
		$a_01_6 = {62 61 69 79 75 61 6e 66 61 6e 40 53 74 65 65 6c 4b 65 72 6e 65 6c 47 72 6f 75 70 } //00 00  baiyuanfan@SteelKernelGroup
	condition:
		any of ($a_*)
 
}