
rule Ransom_Win32_VCrypt_MTB{
	meta:
		description = "Ransom:Win32/VCrypt!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 67 69 73 65 6c 65 2e 6c 69 72 6f 79 2e 66 72 65 65 2e 66 72 2f 62 69 74 6d 61 70 } //01 00  http://gisele.liroy.free.fr/bitmap
		$a_01_1 = {25 50 55 42 4c 49 43 25 5c 70 75 62 6c 69 63 5f 75 73 65 72 2e 76 63 72 79 70 74 } //01 00  %PUBLIC%\public_user.vcrypt
		$a_01_2 = {25 5f 6d 75 73 69 63 2e 76 63 72 79 70 74 } //01 00  %_music.vcrypt
		$a_03_3 = {64 6f 20 22 25 54 45 4d 50 25 5c 90 02 08 2e 65 78 65 22 20 61 20 2d 74 37 7a 20 2d 72 20 2d 6d 78 30 20 2d 90 02 e0 20 90 00 } //01 00 
		$a_01_4 = {54 6f 75 73 20 76 6f 73 20 66 69 63 68 69 65 72 73 20 6f 6e 74 20 c3 a9 74 c3 a9 73 20 63 68 69 66 66 72 c3 a9 73 20 65 74 20 70 6c 61 63 c3 a9 73 20 64 61 6e 73 20 75 6e 65 20 7a 6f 6e 65 20 64 65 20 73 c3 a9 63 75 72 69 74 c3 a9 2e } //00 00 
	condition:
		any of ($a_*)
 
}