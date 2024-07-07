
rule Worm_Win32_Rootcip_E{
	meta:
		description = "Worm:Win32/Rootcip.E,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 "
		
	strings :
		$a_01_0 = {2e 64 6c 6c 00 43 61 6c 6c 57 6e 64 50 72 6f 63 00 47 65 74 4d 73 67 44 61 74 61 00 47 65 74 4d } //3 搮汬䌀污坬摮牐捯䜀瑥獍䑧瑡a敇䵴
		$a_01_1 = {4d 6f 75 73 65 50 72 6f 63 00 53 74 61 72 74 48 6f 6f 6b 00 53 74 6f 70 48 6f 6f 6b 00 } //3
		$a_01_2 = {5b 45 6e 74 65 72 5d 00 5b 42 61 63 6b 53 70 61 63 65 5d } //2
		$a_01_3 = {25 30 34 64 2d 25 30 32 64 2d 25 30 32 64 20 25 30 32 64 3a 25 30 32 64 } //1 %04d-%02d-%02d %02d:%02d
		$a_01_4 = {5b 54 69 54 6c 65 3d 4e 55 4c 4c 5d } //1 [TiTle=NULL]
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=8
 
}