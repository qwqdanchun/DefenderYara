
rule Ransom_Win32_Spora_B{
	meta:
		description = "Ransom:Win32/Spora.B,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0f 00 00 "
		
	strings :
		$a_80_0 = {5c 48 45 4c 50 5f 25 73 2e 68 74 6d 6c } //\HELP_%s.html  1
		$a_80_1 = {70 72 6f 63 65 73 73 20 63 61 6c 6c 20 63 72 65 61 74 65 20 22 63 6d 64 2e 65 78 65 20 2f 63 20 76 73 73 61 64 6d 69 6e 2e 65 78 65 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 } //process call create "cmd.exe /c vssadmin.exe delete shadows  2
		$a_80_2 = {50 47 31 6c 64 47 45 67 61 48 52 30 63 43 31 6c 63 58 56 70 64 6a 30 6e 63 6d 56 6d 63 6d 56 7a 61 43 63 67 59 32 39 75 64 47 56 75 64 44 30 6e 4d 44 73 67 64 58 4a 73 50 57 68 30 64 48 41 36 4c 79 38 } //PG1ldGEgaHR0cC1lcXVpdj0ncmVmcmVzaCcgY29udGVudD0nMDsgdXJsPWh0dHA6Ly8  2
		$a_80_3 = {4d 49 47 66 4d 41 30 47 43 53 71 47 53 49 62 33 44 51 45 42 41 51 55 41 41 34 47 4e 41 44 43 42 69 51 4b 42 67 51 44 59 45 59 6b 49 5a 69 76 66 74 71 6c 68 5a 43 4c 64 50 63 47 77 75 34 2f 4d 41 48 77 62 73 42 39 36 35 42 48 4a 31 32 30 4c 39 47 31 74 6d 79 6e 41 50 70 5a 63 } //MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDYEYkIZivftqlhZCLdPcGwu4/MAHwbsB965BHJ120L9G1tmynAPpZc  2
		$a_80_4 = {00 25 75 3b 25 75 3b 25 75 3b 25 75 3b 25 75 3b 25 75 00 } //  1
		$a_80_5 = {00 31 33 38 36 32 44 33 33 30 38 00 } //  1
		$a_80_6 = {00 25 30 32 68 75 2e 25 30 32 68 75 2e 25 30 34 68 75 3b 00 } //  1
		$a_01_7 = {6b f6 12 81 c6 00 10 00 00 eb 10 f7 f1 8b f0 c1 ee 02 6b f6 12 81 c6 00 02 00 00 c1 ee 04 c1 e6 04 6a 02 53 68 7c ff ff ff ff 75 70 ff 15 } //2
		$a_03_8 = {83 7d 6c 04 0f 85 90 01 04 57 8d 45 90 01 01 50 53 ff 15 90 01 04 3b 45 90 01 01 0f 84 90 01 04 39 5d 90 01 01 75 07 8b 45 90 01 01 3b c6 72 05 89 75 90 01 01 eb 06 83 e0 e0 90 00 } //1
		$a_03_9 = {68 10 66 00 00 ff 35 90 01 04 ff 15 90 01 04 85 c0 0f 84 90 01 04 8d 45 90 01 01 50 8d 45 90 01 01 50 53 6a 08 53 ff 75 90 01 01 89 7d 90 01 01 ff 15 90 01 04 85 c0 0f 84 90 00 } //1
		$a_03_10 = {05 86 00 00 00 50 6a 40 ff 15 90 01 04 8b f0 3b f3 0f 84 90 01 04 ff 35 90 01 04 ff 35 90 01 04 56 ff 15 90 01 04 a1 90 01 04 6a 02 90 00 } //2
		$a_03_11 = {f6 c3 01 74 90 01 01 6a 3a 8d 46 90 01 01 66 89 45 f0 58 ff 75 10 66 89 45 f2 ff 75 0c 33 c0 66 89 45 f4 8d 45 f0 50 ff 15 90 01 04 50 8d 45 f0 50 ff 55 08 d1 eb 46 83 fe 1a 72 90 00 } //2
		$a_03_12 = {8d 77 14 f6 46 f8 02 74 0b 8d 46 ec 50 e8 90 01 02 ff ff eb 90 01 01 83 7e f0 01 75 90 00 } //1
		$a_03_13 = {6a 06 56 ff 75 08 ff d7 8d 45 f8 50 56 56 53 ff 15 90 01 04 50 53 ff 35 90 01 04 ff 15 90 00 } //1
		$a_03_14 = {68 00 02 00 00 ff 15 90 01 04 46 83 fe 20 72 90 01 01 eb 07 c7 45 fc 01 00 00 00 ff 75 90 01 01 ff d7 53 ff d7 90 00 } //2
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*2+(#a_80_2  & 1)*2+(#a_80_3  & 1)*2+(#a_80_4  & 1)*1+(#a_80_5  & 1)*1+(#a_80_6  & 1)*1+(#a_01_7  & 1)*2+(#a_03_8  & 1)*1+(#a_03_9  & 1)*1+(#a_03_10  & 1)*2+(#a_03_11  & 1)*2+(#a_03_12  & 1)*1+(#a_03_13  & 1)*1+(#a_03_14  & 1)*2) >=8
 
}
rule Ransom_Win32_Spora_B_2{
	meta:
		description = "Ransom:Win32/Spora.B,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {3c 68 74 61 3a 61 70 70 6c 69 63 61 74 69 6f 6e 20 77 69 6e 64 6f 77 73 74 61 74 65 3d 22 6d 69 6e 69 6d 69 7a 65 22 2f 3e 3c 73 63 72 69 70 74 3e 6e 65 77 20 41 63 74 69 76 65 58 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 52 75 6e 28 22 63 6d 64 20 2f 63 20 5c 22 5c 22 22 2b 77 69 6e 64 6f 77 2e 6c } //1 <hta:application windowstate="minimize"/><script>new ActiveXObject("WScript.Shell").Run("cmd /c \"\""+window.l
	condition:
		((#a_01_0  & 1)*1) >=1
 
}