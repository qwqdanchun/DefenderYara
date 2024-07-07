
rule Trojan_Win32_Kovter_B{
	meta:
		description = "Trojan:Win32/Kovter.B,SIGNATURE_TYPE_PEHSTR_EXT,78 00 78 00 05 00 00 "
		
	strings :
		$a_01_0 = {00 00 6d 00 6f 00 64 00 65 00 3d 00 32 00 26 00 55 00 49 00 44 00 3d 00 00 00 } //100
		$a_01_1 = {00 6d 6f 64 65 3d 32 26 55 49 44 3d 00 } //100
		$a_01_2 = {00 41 6e 74 69 53 75 6e 62 65 6c 74 53 61 6e 64 62 6f 78 69 65 00 } //10 䄀瑮卩湵敢瑬慓摮潢楸e
		$a_01_3 = {00 00 4f 00 70 00 65 00 72 00 61 00 5c 00 4f 00 70 00 65 00 72 00 61 00 5c 00 63 00 6f 00 6f 00 6b 00 69 00 65 00 73 00 34 00 2e 00 64 00 61 00 74 00 00 00 } //10
		$a_03_4 = {26 4f 53 62 69 74 3d 90 02 10 00 26 61 66 66 5f 69 64 3d 00 90 00 } //10
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*100+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_03_4  & 1)*10) >=120
 
}