
rule Worm_Win32_Autorun_RM{
	meta:
		description = "Worm:Win32/Autorun.RM,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b c6 99 83 e2 03 8b 8c 24 ?? ?? ?? ?? 03 c2 c1 f8 02 8a 44 87 fc c6 44 24 0d 3a 88 44 24 0c 8b c1 48 c6 44 24 0e 5c } //1
		$a_01_1 = {5b 41 75 74 6f 52 75 6e 5d 0d 0a 6f 70 65 6e 3d 2e 5c 4d 53 4f 43 61 63 68 65 5c 39 30 30 30 30 38 30 34 2d 36 30 30 30 2d 31 31 44 33 2d 38 43 46 45 2d 30 31 35 30 30 34 38 33 38 33 43 39 5c 4b 42 39 31 35 38 36 35 2e 65 78 65 } //1 䅛瑵副湵൝漊数㵮尮卍䍏捡敨㥜〰〰〸ⴴ〶〰ㄭ䐱ⴳ䌸䕆〭㔱〰㠴㠳䌳尹䉋ㄹ㠵㔶攮數
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}