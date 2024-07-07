
rule TrojanSpy_Win32_Oket_gen_A{
	meta:
		description = "TrojanSpy:Win32/Oket.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,42 00 41 00 07 00 00 "
		
	strings :
		$a_01_0 = {56 52 49 57 5a 44 55 48 5f 50 6c 66 75 72 76 72 69 77 5f 5a 6c 71 67 72 7a 76 5f 46 78 75 75 68 71 77 59 68 75 76 6c 72 71 5f 55 78 71 00 00 } //20
		$a_01_1 = {55 71 68 76 79 63 74 67 5e 4f 6b 65 74 71 75 71 68 76 5e 43 65 76 6b 78 67 20 55 67 76 77 72 5e 4b 70 75 76 63 6e 6e 67 66 20 45 71 6f 72 71 70 67 70 76 75 5e } //20 Uqhvyctg^Oketquqhv^Cevkxg Ugvwr^Kpuvcnngf Eqorqpgpvu^
		$a_01_2 = {4d 41 43 20 41 64 64 72 65 73 73 3a 20 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 0d 0a 00 } //20
		$a_01_3 = {55 70 64 61 74 65 20 70 61 72 61 20 73 75 63 65 73 73 21 00 63 3a 5c 62 73 6c 6f 67 2e 74 78 74 } //5
		$a_01_4 = {55 70 64 61 74 65 20 70 61 72 61 20 66 61 69 6c 65 64 21 00 63 3a 5c 62 73 6c 6f 67 2e 74 78 74 } //5
		$a_00_5 = {7b 36 36 35 44 45 45 33 32 2f 45 57 33 45 2f 39 38 66 66 2f 30 38 35 45 2f 44 45 34 45 45 32 35 32 31 35 32 36 7d } //1 {665DEE32/EW3E/98ff/085E/DE4EE2521526}
		$a_00_6 = {7b 35 33 39 46 46 34 47 47 2f 48 36 43 37 2f 36 34 66 66 2f 30 36 37 47 2f 44 45 36 43 39 45 35 32 31 35 32 36 7d } //1 {539FF4GG/H6C7/64ff/067G/DE6C9E521526}
	condition:
		((#a_01_0  & 1)*20+(#a_01_1  & 1)*20+(#a_01_2  & 1)*20+(#a_01_3  & 1)*5+(#a_01_4  & 1)*5+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=65
 
}