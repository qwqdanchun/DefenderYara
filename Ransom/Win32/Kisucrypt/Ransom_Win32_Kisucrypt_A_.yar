
rule Ransom_Win32_Kisucrypt_A_{
	meta:
		description = "Ransom:Win32/Kisucrypt.A!!Kisucrypt.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,0b 00 0b 00 09 00 00 03 00 "
		
	strings :
		$a_01_0 = {8a 06 46 32 45 f7 50 56 ff 45 f8 8b 75 f8 8a 06 46 } //03 00 
		$a_03_1 = {83 c0 3c 8b 00 03 c2 83 c0 78 8b 00 03 c2 8b f8 83 c0 20 8b 00 03 c2 33 f6 50 8b 00 03 c2 bb 90 01 04 8a 08 8a 2b 84 c9 90 00 } //03 00 
		$a_01_2 = {80 38 00 74 30 80 78 01 00 74 20 80 78 02 00 74 10 80 78 03 00 75 e6 } //03 00 
		$a_01_3 = {8d 57 10 c7 04 10 2a 2e 2a 00 ff 75 f4 8d 47 10 50 } //03 00 
		$a_01_4 = {80 7a 2c 2e 74 06 80 7a 2d 00 75 14 80 7a 2c 2e 0f 84 a3 00 00 00 80 7a 2c 2e } //03 00 
		$a_00_5 = {47 6f 20 74 6f 20 68 74 74 70 3a 2f 2f 62 69 74 6d 65 73 73 61 67 65 2e 6f 72 67 2f } //01 00  Go to http://bitmessage.org/
		$a_00_6 = {74 61 72 2c 6a 61 72 2c 62 6d 70 2c 73 77 6d 2c 76 61 75 6c 74 2c 78 74 62 6c 2c 63 74 62 2c 31 31 33 2c 37 33 62 2c 61 33 64 2c 61 62 66 } //01 00  tar,jar,bmp,swm,vault,xtbl,ctb,113,73b,a3d,abf
		$a_00_7 = {53 55 42 4a 45 43 54 3a } //01 00  SUBJECT:
		$a_00_8 = {4d 45 53 53 41 47 45 3a } //05 00  MESSAGE:
	condition:
		any of ($a_*)
 
}