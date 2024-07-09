
rule Trojan_Win32_Carrobat_B{
	meta:
		description = "Trojan:Win32/Carrobat.B,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 03 00 00 "
		
	strings :
		$a_02_0 = {63 65 72 74 75 74 69 6c 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 68 74 74 70 3a 2f 2f [0-10] 2e 31 61 70 70 73 2e 63 6f 6d 2f 90 10 04 00 2e 74 78 74 20 25 74 65 6d 70 25 2f 90 10 04 00 2e 74 78 74 20 26 26 20 63 65 72 74 75 74 69 6c 20 2d 64 65 63 6f 64 65 20 2d 66 20 25 74 65 6d 70 25 2f 25 74 65 6d 70 25 2f 90 10 04 00 2e 74 78 74 20 22 25 63 64 25 } //20
		$a_00_1 = {63 6f 70 79 20 2f 59 20 25 77 69 6e 64 69 72 25 5c 53 79 73 74 65 6d 33 32 5c 63 65 72 74 75 74 69 6c 2e 65 78 65 20 25 54 45 4d 50 25 5c 63 74 2e 65 78 65 } //10 copy /Y %windir%\System32\certutil.exe %TEMP%\ct.exe
		$a_02_2 = {63 74 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 68 74 74 70 3a 2f 2f [0-10] 2e 31 61 70 70 73 2e 63 6f 6d 2f 90 10 04 00 2e 74 78 74 20 26 26 20 63 74 20 2d 64 65 63 6f 64 65 20 2d 66 20 90 10 04 00 2e 74 78 74 20 90 10 04 00 2e 62 61 74 20 26 26 20 64 65 6c 20 2f 66 20 2f 71 20 90 10 04 00 2e 74 78 74 20 26 26 20 90 10 04 00 2e 62 61 74 } //10
	condition:
		((#a_02_0  & 1)*20+(#a_00_1  & 1)*10+(#a_02_2  & 1)*10) >=20
 
}