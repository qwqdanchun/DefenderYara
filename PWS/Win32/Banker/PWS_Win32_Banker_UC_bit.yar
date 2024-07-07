
rule PWS_Win32_Banker_UC_bit{
	meta:
		description = "PWS:Win32/Banker.UC!bit,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_03_0 = {5d 2e 74 78 74 00 00 00 90 09 18 00 5b 00 00 00 ff ff ff ff 02 00 00 00 5d 5b 00 00 ff ff ff ff 05 00 00 00 90 00 } //1
		$a_03_1 = {35 ae ca 7b c3 ff 25 90 01 04 8b c0 53 33 db 6a 00 e8 90 01 04 83 f8 07 75 1c 6a 01 e8 90 00 } //1
		$a_01_2 = {8b 41 01 80 39 e9 74 0c 80 39 eb 75 0c 0f be c0 41 41 eb 03 83 c1 05 01 c1 } //1
		$a_01_3 = {00 57 49 4e 44 4f 57 53 20 4c 49 56 45 20 4d 45 53 53 45 4e 47 45 52 20 50 41 53 53 57 4f 52 44 53 00 } //1 圀义佄南䰠噉⁅䕍卓久䕇⁒䅐卓佗䑒S
		$a_01_4 = {00 46 49 52 45 46 4f 58 20 20 50 41 53 53 57 4f 52 44 53 00 } //1 䘀剉䙅塏†䅐卓佗䑒S
		$a_01_5 = {00 47 4f 4f 47 4c 45 20 43 48 52 4f 4d 45 20 50 41 53 53 57 4f 52 44 53 00 } //1
		$a_01_6 = {00 4f 50 45 52 41 20 50 41 53 53 57 4f 52 44 53 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}