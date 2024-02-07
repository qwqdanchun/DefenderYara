
rule Trojan_Win32_Vefisi_gen_A{
	meta:
		description = "Trojan:Win32/Vefisi.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 63 2e 65 78 65 20 64 65 6c 65 74 65 20 4b 57 61 74 63 68 53 76 63 } //02 00  sc.exe delete KWatchSvc
		$a_01_1 = {c7 44 24 28 02 00 00 00 89 5c 24 2c 89 5c 24 30 89 5c 24 34 89 5c 24 38 89 44 24 3c 89 5c 24 40 89 5c 24 14 } //02 00 
		$a_01_2 = {73 63 2e 65 78 65 20 73 74 6f 70 20 4b 57 61 74 63 68 53 76 63 } //02 00  sc.exe stop KWatchSvc
		$a_01_3 = {6b 61 76 33 32 2e 65 78 65 00 00 00 61 76 70 2e } //02 00 
		$a_01_4 = {4b 69 6c 6c 62 6f 78 00 49 63 65 53 77 6f 72 64 } //01 00  楋汬潢x捉卥潷摲
		$a_01_5 = {2e 6c 6e 6b 00 00 25 73 5c 55 } //00 00 
	condition:
		any of ($a_*)
 
}