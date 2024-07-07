
rule TrojanSpy_Win32_Keylogger_CQ{
	meta:
		description = "TrojanSpy:Win32/Keylogger.CQ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 31 00 42 00 34 00 42 00 41 00 42 00 30 00 46 00 2d 00 34 00 35 00 34 00 34 00 2d 00 34 00 63 00 31 00 33 00 2d 00 39 00 30 00 45 00 39 00 2d 00 36 00 32 00 32 00 45 00 32 00 45 00 45 00 31 00 34 00 31 00 31 00 42 00 } //1 Global\1B4BAB0F-4544-4c13-90E9-622E2EE1411B
		$a_01_1 = {5c 00 69 00 69 00 73 00 6d 00 67 00 72 00 2e 00 64 00 61 00 74 00 } //1 \iismgr.dat
		$a_03_2 = {5b 57 69 6e 64 6f 77 73 5d 90 02 08 5b 4e 75 6d 62 65 72 20 4c 6f 63 6b 5d 90 02 08 5b 53 63 72 65 65 6e 20 4c 6f 63 6b 5d 90 00 } //1
		$a_01_3 = {4b 65 79 4c 6f 67 2e 64 6c 6c 00 4f 70 65 72 61 74 65 52 6f 75 74 69 6e 65 57 00 53 74 61 72 74 52 6f 75 74 69 6e 65 57 } //1 敋䱹杯搮汬伀数慲整潒瑵湩坥匀慴瑲潒瑵湩坥
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}