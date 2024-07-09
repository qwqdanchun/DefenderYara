
rule TrojanDownloader_BAT_Faksost_B_bit{
	meta:
		description = "TrojanDownloader:BAT/Faksost.B!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_01_0 = {61 00 48 00 52 00 30 00 63 00 48 00 4d 00 36 00 4c 00 79 00 39 00 33 00 64 00 33 00 63 00 75 00 64 00 58 00 42 00 73 00 62 00 32 00 46 00 6b 00 4c 00 6d 00 56 00 6c 00 4c 00 32 00 52 00 76 00 64 00 32 00 35 00 73 00 62 00 32 00 46 00 6b 00 4c 00 7a 00 63 00 78 00 4f 00 54 00 59 00 34 00 4d 00 44 00 6b 00 76 00 4e 00 7a 00 42 00 69 00 4e 00 6a 00 4e 00 6a 00 4d 00 44 00 6b 00 35 00 4d 00 47 00 52 00 6d 00 4d 00 54 00 46 00 6c 00 4e 00 44 00 56 00 6d 00 4e 00 47 00 55 00 76 00 55 00 32 00 56 00 79 00 64 00 6d 00 56 00 79 00 4c 00 6d 00 56 00 34 00 5a 00 51 00 3d 00 3d 00 } //3 aHR0cHM6Ly93d3cudXBsb2FkLmVlL2Rvd25sb2FkLzcxOTY4MDkvNzBiNjNjMDk5MGRmMTFlNDVmNGUvU2VydmVyLmV4ZQ==
		$a_01_1 = {64 00 47 00 56 00 74 00 63 00 41 00 3d 00 3d 00 } //1 dGVtcA==
		$a_01_2 = {4c 00 33 00 4e 00 6c 00 63 00 6e 00 5a 00 6c 00 63 00 69 00 35 00 6c 00 65 00 47 00 55 00 3d 00 } //2 L3NlcnZlci5leGU=
		$a_03_3 = {68 74 74 70 73 3a 2f 2f 77 77 77 2e 75 70 6c 6f 61 64 2e 65 65 2f [0-36] 2f 53 65 72 76 65 72 2e 65 78 65 } //3
		$a_01_4 = {2f 73 65 72 76 65 72 2e 65 78 65 } //1 /server.exe
		$a_01_5 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 69 00 6c 00 65 00 } //1 DownloadFile
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*2+(#a_03_3  & 1)*3+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}