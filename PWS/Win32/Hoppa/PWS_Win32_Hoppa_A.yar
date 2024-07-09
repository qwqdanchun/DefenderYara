
rule PWS_Win32_Hoppa_A{
	meta:
		description = "PWS:Win32/Hoppa.A,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 07 00 00 "
		
	strings :
		$a_03_0 = {5d 2e 74 78 74 00 00 00 90 09 18 00 5b 00 00 00 ff ff ff ff 02 00 00 00 5d 5b 00 00 ff ff ff ff 05 00 00 00 } //4
		$a_01_1 = {00 57 49 4e 44 4f 57 53 20 4c 49 56 45 20 4d 45 53 53 45 4e 47 45 52 20 50 41 53 53 57 4f 52 44 53 00 } //1 圀义佄南䰠噉⁅䕍卓久䕇⁒䅐卓佗䑒S
		$a_01_2 = {00 46 49 52 45 46 4f 58 20 20 50 41 53 53 57 4f 52 44 53 00 } //1 䘀剉䙅塏†䅐卓佗䑒S
		$a_01_3 = {00 47 4f 4f 47 4c 45 20 43 48 52 4f 4d 45 20 50 41 53 53 57 4f 52 44 53 00 } //1
		$a_01_4 = {00 4f 50 45 52 41 20 50 41 53 53 57 4f 52 44 53 00 } //1
		$a_01_5 = {00 57 69 6e 48 4e 00 } //4
		$a_01_6 = {c6 80 84 00 00 00 75 c6 80 85 00 00 00 41 c6 80 86 00 00 00 8d c6 80 87 00 00 00 58 c6 80 88 00 00 00 04 c6 80 89 00 00 00 81 c6 80 8a 00 00 00 3b c6 80 8b 00 00 00 4c c6 80 8c 00 00 00 69 c6 80 8d 00 00 00 62 c6 80 8e 00 00 00 72 } //8
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*4+(#a_01_6  & 1)*8) >=20
 
}