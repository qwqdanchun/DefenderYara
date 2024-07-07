
rule Trojan_Win32_FormBook_AL_MTB{
	meta:
		description = "Trojan:Win32/FormBook.AL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //1 MSVBVM60.DLL
		$a_01_1 = {51 00 78 00 48 00 48 00 48 00 6b 00 73 00 67 00 42 00 31 00 71 00 72 00 63 00 64 00 39 00 78 00 66 00 61 00 62 00 34 00 61 00 32 00 34 00 38 00 } //1 QxHHHksgB1qrcd9xfab4a248
		$a_01_2 = {65 00 58 00 67 00 43 00 46 00 70 00 59 00 44 00 73 00 48 00 6c 00 58 00 6d 00 44 00 50 00 53 00 4d 00 35 00 44 00 68 00 6f 00 32 00 31 00 35 00 33 00 } //1 eXgCFpYDsHlXmDPSM5Dho2153
		$a_01_3 = {65 00 62 00 76 00 75 00 6b 00 72 00 6d 00 62 00 46 00 6f 00 51 00 5a 00 4b 00 52 00 77 00 5a 00 31 00 30 00 33 00 } //1 ebvukrmbFoQZKRwZ103
		$a_01_4 = {66 00 6d 00 4a 00 53 00 70 00 54 00 6f 00 74 00 61 00 64 00 59 00 6f 00 48 00 31 00 32 00 32 00 } //1 fmJSpTotadYoH122
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}