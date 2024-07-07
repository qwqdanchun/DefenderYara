
rule Trojan_BAT_Nooteling_C_dha{
	meta:
		description = "Trojan:BAT/Nooteling.C!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_01_0 = {36 62 63 34 64 35 32 34 2d 32 30 38 33 2d 34 30 66 39 2d 38 39 32 63 2d 65 33 62 63 37 65 66 63 64 66 30 35 } //3 6bc4d524-2083-40f9-892c-e3bc7efcdf05
		$a_01_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 61 00 70 00 69 00 2e 00 6f 00 6e 00 65 00 64 00 72 00 69 00 76 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 76 00 31 00 2e 00 30 00 2f 00 73 00 68 00 61 00 72 00 65 00 73 00 2f 00 } //1 https://api.onedrive.com/v1.0/shares/
		$a_01_2 = {3d 00 46 00 75 00 4d 00 55 00 5e 00 45 00 32 00 7d 00 35 00 5d 00 5f 00 25 00 40 00 21 00 2b 00 43 00 44 00 39 00 6e 00 6d 00 42 00 7b 00 70 00 63 00 33 00 38 00 48 00 6f 00 50 00 4c 00 52 00 } //1 =FuMU^E2}5]_%@!+CD9nmB{pc38HoPLR
		$a_01_3 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 4d 00 75 00 74 00 65 00 78 00 54 00 65 00 73 00 74 00 43 00 6c 00 61 00 73 00 73 00 } //1 Global\MutexTestClass
		$a_01_4 = {5c 4c 69 62 72 61 72 79 5c 4c 69 62 72 61 72 79 5c } //1 \Library\Library\
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=3
 
}