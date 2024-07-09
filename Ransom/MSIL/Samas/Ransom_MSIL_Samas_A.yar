
rule Ransom_MSIL_Samas_A{
	meta:
		description = "Ransom:MSIL/Samas.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_00_0 = {5c 00 53 00 74 00 65 00 61 00 6d 00 5c 00 6c 00 69 00 62 00 61 00 76 00 5f 00 68 00 32 00 36 00 34 00 2d 00 35 00 36 00 2e 00 64 00 6c 00 6c 00 2e 00 63 00 72 00 79 00 70 00 74 00 } //2 \Steam\libav_h264-56.dll.crypt
		$a_02_1 = {62 00 61 00 63 00 6b 00 75 00 70 00 [0-14] 2e 00 62 00 61 00 63 00 6b 00 [0-14] 2e 00 62 00 61 00 63 00 6b 00 75 00 70 00 64 00 62 00 } //2
		$a_02_2 = {73 00 70 00 69 00 [0-14] 73 00 70 00 66 00 [0-14] 73 00 61 00 76 00 [0-14] 73 00 69 00 6b 00 } //2
	condition:
		((#a_00_0  & 1)*2+(#a_02_1  & 1)*2+(#a_02_2  & 1)*2) >=6
 
}
rule Ransom_MSIL_Samas_A_2{
	meta:
		description = "Ransom:MSIL/Samas.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 09 00 00 "
		
	strings :
		$a_01_0 = {48 00 45 00 4c 00 50 00 5f 00 44 00 45 00 43 00 52 00 59 00 50 00 54 00 5f 00 59 00 4f 00 55 00 52 00 5f 00 46 00 49 00 4c 00 45 00 53 00 } //1 HELP_DECRYPT_YOUR_FILES
		$a_01_1 = {2e 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 52 00 53 00 41 00 } //1 .encryptedRSA
		$a_01_2 = {43 00 6f 00 75 00 6c 00 64 00 20 00 6e 00 6f 00 74 00 20 00 62 00 65 00 67 00 69 00 6e 00 20 00 72 00 65 00 73 00 74 00 61 00 72 00 74 00 20 00 73 00 65 00 73 00 73 00 69 00 6f 00 6e 00 2e 00 20 00 20 00 55 00 6e 00 61 00 62 00 6c 00 65 00 20 00 74 00 6f 00 20 00 64 00 65 00 74 00 65 00 72 00 6d 00 69 00 6e 00 65 00 20 00 66 00 69 00 6c 00 65 00 20 00 6c 00 6f 00 63 00 6b 00 65 00 72 00 2e 00 } //1 Could not begin restart session.  Unable to determine file locker.
		$a_01_3 = {43 00 6f 00 75 00 6c 00 64 00 20 00 6e 00 6f 00 74 00 20 00 6c 00 69 00 73 00 74 00 20 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 65 00 73 00 20 00 6c 00 6f 00 63 00 6b 00 69 00 6e 00 67 00 20 00 72 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 2e 00 } //1 Could not list processes locking resource.
		$a_01_4 = {4b 00 65 00 79 00 20 00 69 00 73 00 20 00 6e 00 6f 00 74 00 20 00 63 00 6f 00 72 00 72 00 65 00 63 00 74 00 20 00 66 00 6f 00 72 00 6d 00 61 00 74 00 20 00 3a 00 } //1 Key is not correct format :
		$a_01_5 = {57 68 6f 49 73 4c 6f 63 6b 69 6e 67 00 } //1
		$a_01_6 = {6d 79 65 65 6e 6e 63 63 00 } //1
		$a_01_7 = {3c 72 65 63 75 72 73 69 76 65 67 65 74 66 69 6c 65 73 3e } //1 <recursivegetfiles>
		$a_01_8 = {45 5f 4e 5f 43 5f 31 32 33 34 } //1 E_N_C_1234
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=6
 
}
rule Ransom_MSIL_Samas_A_3{
	meta:
		description = "Ransom:MSIL/Samas.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {35 00 37 00 30 00 30 00 36 00 38 00 30 00 30 00 36 00 31 00 30 00 30 00 37 00 34 00 30 00 30 00 32 00 30 00 30 00 30 00 36 00 38 00 30 00 30 00 36 00 31 00 30 00 30 00 37 00 30 00 30 00 30 00 37 00 30 00 30 00 30 00 36 00 35 00 30 00 30 00 36 00 45 00 30 00 30 00 36 00 35 00 30 00 30 00 36 00 34 00 30 00 30 00 32 00 30 00 30 00 30 00 37 00 34 00 30 00 30 00 36 00 46 00 30 00 30 00 32 00 30 00 30 00 30 00 37 00 39 00 30 00 30 00 36 00 46 00 30 00 30 00 37 00 35 00 30 00 30 00 37 00 32 00 30 00 30 00 32 00 30 00 30 00 30 00 36 00 36 00 30 00 30 00 36 00 39 00 30 00 30 00 36 00 43 00 30 00 30 00 36 00 35 00 30 00 30 00 37 00 33 00 30 00 30 00 33 00 46 00 } //1 57006800610074002000680061007000700065006E0065006400200074006F00200079006F00750072002000660069006C00650073003F
		$a_01_1 = {34 00 31 00 30 00 30 00 36 00 43 00 30 00 30 00 36 00 43 00 30 00 30 00 32 00 30 00 30 00 30 00 37 00 39 00 30 00 30 00 36 00 46 00 30 00 30 00 37 00 35 00 30 00 30 00 37 00 32 00 30 00 30 00 32 00 30 00 30 00 30 00 36 00 36 00 30 00 30 00 36 00 39 00 30 00 30 00 36 00 43 00 30 00 30 00 36 00 35 00 30 00 30 00 37 00 33 00 30 00 30 00 32 00 30 00 30 00 30 00 36 00 35 00 30 00 30 00 36 00 45 00 30 00 30 00 36 00 33 00 30 00 30 00 37 00 32 00 30 00 30 00 37 00 39 00 30 00 30 00 37 00 30 00 30 00 30 00 37 00 34 00 30 00 30 00 36 00 35 00 30 00 30 00 36 00 34 00 30 00 30 00 32 00 30 00 } //1 41006C006C00200079006F00750072002000660069006C0065007300200065006E00630072007900700074006500640020
		$a_01_2 = {34 00 32 00 30 00 30 00 36 00 39 00 30 00 30 00 37 00 34 00 30 00 30 00 36 00 33 00 30 00 30 00 36 00 46 00 30 00 30 00 36 00 39 00 30 00 30 00 36 00 45 00 30 00 30 00 32 00 30 00 30 00 30 00 35 00 30 00 30 00 30 00 36 00 35 00 30 00 30 00 37 00 32 00 30 00 30 00 34 00 38 00 30 00 30 00 36 00 46 00 30 00 30 00 37 00 33 00 30 00 30 00 37 00 34 00 } //1 42006900740063006F0069006E00200050006500720048006F00730074
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}