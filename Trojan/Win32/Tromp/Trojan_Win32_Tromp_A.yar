
rule Trojan_Win32_Tromp_A{
	meta:
		description = "Trojan:Win32/Tromp.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {74 64 6c 6c 2e 64 6c 6c 00 4e 74 51 75 65 72 79 } //2 摴汬搮汬一兴敵祲
		$a_01_1 = {89 45 fc 03 40 3c 8b 80 80 00 00 00 03 45 fc 89 45 f8 89 c6 8b 50 0c 89 d0 03 55 fc 85 c0 74 } //2
		$a_03_2 = {40 00 8d 55 fc 52 6a 04 6a 20 50 ff 15 ?? ?? ?? ?? 8b 35 ?? ?? ?? ?? bf ?? ?? ?? ?? b9 20 00 00 00 f3 a4 8b 3d } //1
		$a_01_3 = {74 00 61 00 73 00 6b 00 64 00 69 00 72 00 00 00 74 00 61 00 73 00 6b 00 64 00 69 00 72 00 00 00 61 64 76 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}