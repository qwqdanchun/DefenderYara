
rule Trojan_Win32_Ejik_gen_A{
	meta:
		description = "Trojan:Win32/Ejik.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0a 00 00 0a 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //01 00  SOFTWARE\Borland\Delphi\RTL
		$a_00_1 = {eb f0 5f 5e 5b 59 5d c3 00 00 ff ff ff ff 04 00 00 00 2e 64 6c 6c 00 } //01 00 
		$a_02_2 = {45 58 45 46 49 4c 45 00 ff ff ff ff 10 00 00 00 52 65 67 73 76 72 33 32 2e 65 78 65 20 2f 73 90 09 0c 00 ff ff ff ff 03 00 00 00 90 04 03 06 61 2d 7a 30 2d 39 00 90 00 } //01 00 
		$a_00_3 = {73 65 74 75 70 64 61 79 } //01 00  setupday
		$a_00_4 = {65 2d 6a 6f 6b 2e 63 6e 2f 63 6e 66 67 } //01 00  e-jok.cn/cnfg
		$a_02_5 = {62 69 7a 36 37 38 2e 63 6e 2f 53 90 03 05 0a 4b 6c 69 73 74 65 61 72 63 68 49 6d 61 67 65 2e 74 78 74 90 00 } //01 00 
		$a_00_6 = {72 65 73 69 69 66 65 72 73 2e 69 6e 69 } //01 00  resiifers.ini
		$a_00_7 = {77 69 6e 64 6f 77 6e 65 77 73 75 70 73 2e 69 6e 69 } //01 00  windownewsups.ini
		$a_03_8 = {70 61 73 73 77 6f 72 64 90 01 24 75 73 65 72 6e 61 6d 65 90 01 1c 50 61 73 73 77 6f 72 64 90 01 1c 55 73 65 72 6e 61 6d 65 90 00 } //01 00 
		$a_01_9 = {45 49 64 49 6e 76 61 6c 69 64 53 65 72 76 69 63 65 4e 61 6d 65 } //00 00  EIdInvalidServiceName
	condition:
		any of ($a_*)
 
}