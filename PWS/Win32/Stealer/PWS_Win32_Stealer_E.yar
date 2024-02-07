
rule PWS_Win32_Stealer_E{
	meta:
		description = "PWS:Win32/Stealer.E,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 6d 74 70 5f 74 65 78 74 00 } //01 00  浳灴瑟硥t
		$a_01_1 = {73 6d 74 70 5f 70 69 63 74 75 72 65 00 } //01 00 
		$a_01_2 = {67 65 74 66 69 6c 65 00 } //01 00  敧晴汩e
		$a_01_3 = {73 65 6e 64 66 69 6c 65 00 } //01 00 
		$a_01_4 = {67 65 74 70 61 73 73 00 } //01 00  敧灴獡s
		$a_01_5 = {67 65 74 69 65 70 61 73 73 00 } //01 00  敧楴灥獡s
		$a_01_6 = {73 6d 74 70 5f 70 69 63 74 75 72 65 3a 3a 65 6e 64 } //01 00  smtp_picture::end
		$a_01_7 = {57 43 58 5f 46 54 50 2e 49 4e 49 00 } //01 00  䍗彘呆⹐义I
		$a_01_8 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 69 6d 61 67 65 2f 6a 70 65 67 3b 00 } //01 00 
		$a_01_9 = {69 65 5f 70 61 73 73 77 6f 72 64 73 2e 74 78 74 00 } //01 00 
		$a_01_10 = {2f 62 6f 74 6e 65 74 2f 75 70 6c 6f 61 64 2e 70 68 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}