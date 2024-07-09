
rule Trojan_Win32_Conhook_C{
	meta:
		description = "Trojan:Win32/Conhook.C,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 10 00 00 "
		
	strings :
		$a_00_0 = {43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e 5c 4e 6f 74 69 66 79 5c 00 00 00 4c 6f 67 6f 6e } //1
		$a_00_1 = {49 64 65 6e 74 69 74 69 65 73 00 00 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1
		$a_00_2 = {72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 43 6f 6e 74 72 6f 6c 20 50 61 6e 65 6c 5c 53 65 74 74 69 6e 67 73 } //1 rosoft\Windows\CurrentVersion\Control Panel\Settings
		$a_00_3 = {67 5f 49 6e 73 74 61 6c 6c 44 4c 4c 00 00 00 00 78 57 6f 76 71 64 6f } //2
		$a_00_4 = {25 73 3f 76 3d 25 78 5f 25 78 5f 25 78 26 67 3d 25 73 26 74 3d 25 30 34 69 5f 25 30 32 69 5f 25 30 32 69 5f 25 30 32 69 5f 25 30 32 69 25 73 } //2 %s?v=%x_%x_%x&g=%s&t=%04i_%02i_%02i_%02i_%02i%s
		$a_00_5 = {5f 43 6f 6e 73 70 72 4d 75 74 78 00 5c 77 69 6e 69 6e 69 74 2e 69 6e 69 } //2 䍟湯灳䵲瑵x睜湩湩瑩椮楮
		$a_00_6 = {41 73 79 6e 63 68 72 6f 6e 6f 75 73 00 00 00 00 44 6c 6c 4e 61 6d 65 00 49 6d 70 65 72 73 6f 6e 61 74 65 00 4c 6f 67 6f 6e 00 00 00 4c 6f 67 6f 66 66 } //2
		$a_01_7 = {43 3a 3f 50 52 4f 47 52 41 4d 20 46 49 4c 45 53 3f 4d 49 43 52 4f 53 4f 46 54 20 41 4e 54 49 53 50 59 57 41 52 45 3f 47 43 41 53 53 45 52 56 41 4c 45 52 54 2e 45 58 45 } //2 C:?PROGRAM FILES?MICROSOFT ANTISPYWARE?GCASSERVALERT.EXE
		$a_00_8 = {61 77 78 5f 6d 75 74 61 6e 74 00 00 41 44 2d 41 57 41 52 45 2e 45 58 45 00 00 00 00 25 30 38 78 } //2
		$a_01_9 = {41 63 74 69 76 61 74 65 00 48 6f 6f 6b 50 72 6f 63 00 4c 6f 67 6f 66 66 00 4c 6f 67 6f 6e 00 53 74 61 72 74 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 } //1 捁楴慶整䠀潯偫潲c潌潧晦䰀杯湯匀慴瑲䐀汬慃啮汮慯乤睯
		$a_02_10 = {4c 6f 63 61 6c ?? 56 4d 50 72 6f 74 65 63 74 69 6f 6e 4d 75 74 65 78 } //1
		$a_02_11 = {4c 6f 63 61 6c ?? 56 4d 4d 61 69 6e 4d 75 74 65 78 } //1
		$a_00_12 = {68 74 74 70 3a 2f 2f 38 32 2e 39 38 2e 32 33 35 2e 36 33 2f 63 67 69 2d 62 69 6e 2f 63 68 65 63 6b 2f 61 75 74 6f 61 66 66 33 } //2 http://82.98.235.63/cgi-bin/check/autoaff3
		$a_00_13 = {68 74 74 70 3a 2f 2f 38 39 2e 31 38 38 2e 31 36 2e 31 38 2f } //2 http://89.188.16.18/
		$a_00_14 = {68 74 74 70 3a 2f 2f 75 73 68 75 69 73 74 6f 76 2e 6e 65 74 2f 63 67 69 2d 62 69 6e 2f 63 68 65 63 6b 2f 61 75 74 6f 61 66 66 } //2 http://ushuistov.net/cgi-bin/check/autoaff
		$a_00_15 = {68 74 74 70 3a 2f 2f 36 35 2e 32 34 33 2e 31 30 33 2e 38 30 2f 38 30 } //2 http://65.243.103.80/80
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*2+(#a_00_4  & 1)*2+(#a_00_5  & 1)*2+(#a_00_6  & 1)*2+(#a_01_7  & 1)*2+(#a_00_8  & 1)*2+(#a_01_9  & 1)*1+(#a_02_10  & 1)*1+(#a_02_11  & 1)*1+(#a_00_12  & 1)*2+(#a_00_13  & 1)*2+(#a_00_14  & 1)*2+(#a_00_15  & 1)*2) >=14
 
}