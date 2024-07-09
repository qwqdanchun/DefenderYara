
rule PWS_Win32_Murcani_A{
	meta:
		description = "PWS:Win32/Murcani.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 "
		
	strings :
		$a_00_0 = {61 62 65 32 38 36 39 66 2d 39 62 34 37 2d 34 63 64 39 2d 61 33 35 38 2d 63 32 32 39 30 34 64 62 61 37 66 37 } //1 abe2869f-9b47-4cd9-a358-c22904dba7f7
		$a_00_1 = {43 72 79 70 74 55 6e 70 72 6f 74 65 63 74 44 61 74 61 } //1 CryptUnprotectData
		$a_03_2 = {66 0f be 91 ?? ?? ?? ?? c1 e2 02 66 89 10 41 40 40 83 f9 25 7c } //1
		$a_01_3 = {25 73 5c 57 69 6e 72 65 63 76 } //1 %s\Winrecv
		$a_01_4 = {25 00 73 00 5c 00 25 00 63 00 25 00 63 00 25 00 63 00 25 00 63 00 25 00 63 00 25 00 63 00 2e 00 54 00 4d 00 50 00 } //1 %s\%c%c%c%c%c%c.TMP
		$a_01_5 = {35 00 65 00 37 00 65 00 38 00 31 00 30 00 30 00 } //1 5e7e8100
		$a_01_6 = {0f 01 4d dc 81 7d de 00 f4 03 80 76 09 81 7d de 00 74 04 80 72 72 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=4
 
}