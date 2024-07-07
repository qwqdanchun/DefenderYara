
rule TrojanDropper_Win32_Buzus_gen_A{
	meta:
		description = "TrojanDropper:Win32/Buzus.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,71 00 70 00 05 00 00 "
		
	strings :
		$a_00_0 = {00 00 00 00 2c 02 52 65 73 75 6d 65 54 68 72 65 61 64 00 00 83 02 53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 00 00 c4 02 56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 45 78 00 00 e9 02 57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 00 00 bc 02 56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 00 00 3e 01 47 65 74 50 72 6f 63 41 64 64 72 65 73 73 00 00 c2 01 4c 6f 61 64 4c 69 62 72 61 72 79 41 00 00 1c 02 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 00 67 01 47 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 00 00 44 00 43 72 65 61 74 65 50 72 6f 63 65 73 73 41 00 00 ca 00 47 65 74 } //50
		$a_00_1 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 00 00 ca 00 47 65 74 43 6f 6d 6d 61 6e 64 4c 69 6e 65 41 00 4b 45 52 4e 45 4c 33 32 2e 64 6c 6c 00 00 fd 00 47 65 74 44 43 00 55 53 45 52 33 32 2e 64 6c 6c 00 00 69 01 47 65 74 54 65 78 74 43 6f 6c 6f 72 00 00 f3 01 53 65 74 54 65 78 74 43 6f 6c 6f 72 00 00 47 44 49 33 32 2e 64 6c 6c 00 00 00 00 } //50
		$a_02_2 = {8d 54 24 4c 52 50 e8 90 01 02 ff ff 8b 90 01 01 f4 8b 90 01 01 f8 83 c4 04 50 8b 44 24 90 01 01 51 8b 4c 24 90 01 01 03 d1 52 50 ff 15 90 01 02 10 00 33 c9 45 66 8b 90 01 01 06 83 90 01 01 28 3b e9 72 a9 8b 84 24 38 01 00 00 8b 4c 24 90 01 01 6a 00 8d 54 24 90 01 01 6a 04 83 c0 08 52 50 51 ff d3 8b 90 01 02 8b 7c 24 90 01 01 8b 4c 24 90 01 01 8d 84 24 94 00 00 00 03 d7 50 51 89 94 24 4c 01 00 00 ff 15 90 01 02 10 00 8b 54 24 90 01 01 52 ff 15 90 01 02 10 00 5f 5e 5d 33 c0 5b 81 c4 50 03 00 00 c3 90 00 } //10
		$a_02_3 = {81 ec 50 03 00 00 53 55 56 57 90 02 40 8d 44 24 38 8d 4c 24 50 50 51 6a 00 6a 00 6a 04 6a 00 6a 00 6a 00 ff 15 90 01 02 10 00 50 6a 00 ff 15 90 01 02 10 00 90 00 } //1
		$a_02_4 = {10 00 8b 44 24 3c 8d 94 24 94 00 00 00 52 50 ff 15 90 01 02 10 00 8b 94 24 38 01 00 00 8b 44 24 38 6a 00 8d 4c 24 4c 6a 04 83 c2 08 51 52 50 ff 15 90 01 02 10 00 56 90 02 30 c6 44 24 90 01 02 c6 44 24 90 01 02 c6 44 24 90 01 02 c6 44 24 90 01 02 c6 44 24 90 01 02 c6 44 24 90 01 02 c6 44 24 90 00 } //2
	condition:
		((#a_00_0  & 1)*50+(#a_00_1  & 1)*50+(#a_02_2  & 1)*10+(#a_02_3  & 1)*1+(#a_02_4  & 1)*2) >=112
 
}