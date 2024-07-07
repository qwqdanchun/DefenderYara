
rule Virus_Win32_Bakaver_gen_A{
	meta:
		description = "Virus:Win32/Bakaver.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,25 00 1b 00 07 00 00 "
		
	strings :
		$a_02_0 = {e8 00 00 00 00 5d 81 ed 13 10 40 00 8d 85 2c 20 40 00 50 ff 90 01 05 8b 58 3c 8b 5c 03 78 8b 4c 03 18 89 8d 9d 33 40 00 33 c9 8b 7c 03 20 8b 54 03 1c 03 d0 8b 5c 03 24 03 d8 8b 34 07 03 f0 57 8d bd 93 20 40 00 51 b9 0f 00 00 00 f3 a6 59 5f 90 00 } //10
		$a_00_1 = {50 8b f0 66 81 38 4d 5a 75 33 66 83 78 18 40 72 2c 0f b7 48 3c 03 c1 81 38 50 45 00 00 75 1e 66 81 78 04 4c 01 72 16 66 81 78 04 60 01 73 0e 66 83 78 5c 02 72 07 66 83 78 5c 03 76 05 e9 50 03 00 00 97 8b 87 80 00 00 00 e8 57 03 00 00 83 38 00 74 ea 92 8b 42 0c e8 49 03 00 00 81 38 4b 45 52 4e 75 09 81 78 04 45 4c 33 32 } //10
		$a_00_2 = {f6 85 e1 33 40 00 01 74 23 b0 e9 aa 8b 85 bd 33 40 00 8b 40 0c 8b 8d ad 33 40 00 2b c1 8b cf 2b 8d e2 33 40 00 83 c1 04 2b c1 ab c3 b0 c3 aa c3 } //10
		$a_00_3 = {03 41 56 50 04 53 43 41 4e 06 46 49 4e 44 56 49 02 46 2d 00 0d 41 4e 54 49 2d 56 49 52 2e 44 41 54 00 0b 43 48 4b 4c 49 53 54 2e 4d 53 00 08 41 56 50 2e 43 52 43 00 08 49 56 42 2e 4e 54 5a } //5
		$a_00_4 = {1f 23 00 00 } //1
		$a_00_5 = {62 61 6b 61 2e 77 61 76 } //1 baka.wav
		$a_00_6 = {53 66 63 49 73 46 69 6c 65 50 72 6f 74 65 63 74 65 64 } //1 SfcIsFileProtected
	condition:
		((#a_02_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*5+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=27
 
}