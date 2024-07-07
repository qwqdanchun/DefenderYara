
rule PWS_Win32_Daptdei_A{
	meta:
		description = "PWS:Win32/Daptdei.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 06 00 00 "
		
	strings :
		$a_03_0 = {83 c8 ff eb 18 8b c8 81 e1 ff 00 00 00 0f be d2 33 ca c1 e8 08 46 33 04 8d 90 01 04 8a 16 84 d2 75 e2 90 00 } //1
		$a_01_1 = {ba 00 00 00 70 59 3b c2 76 25 8b 48 3c 8b 4c 01 78 81 7c 01 18 00 03 00 00 77 10 05 00 00 ff ff } //1
		$a_03_2 = {74 06 40 80 30 90 01 01 75 fa 90 00 } //1
		$a_03_3 = {75 3d 8d 45 fc 50 68 01 00 00 98 57 c7 45 fc 01 00 00 00 e8 90 01 04 85 c0 75 23 90 00 } //1
		$a_03_4 = {66 39 46 16 0f 85 90 01 02 00 00 53 83 c6 28 81 3e 55 53 45 52 90 00 } //1
		$a_00_5 = {66 74 70 64 61 74 61 3d 31 26 75 73 65 72 3d 25 73 26 70 61 73 73 3d 25 73 26 68 6f 73 74 3d 25 73 } //1 ftpdata=1&user=%s&pass=%s&host=%s
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_00_5  & 1)*1) >=3
 
}