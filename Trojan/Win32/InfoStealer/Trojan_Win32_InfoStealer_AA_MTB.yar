
rule Trojan_Win32_InfoStealer_AA_MTB{
	meta:
		description = "Trojan:Win32/InfoStealer.AA!MTB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 00 6e 00 41 00 75 00 53 00 6a 00 6d 00 44 00 64 00 69 00 4b 00 4d 00 39 00 79 00 36 00 42 00 69 00 77 00 39 00 4b 00 66 00 4e 00 67 00 55 00 75 00 39 00 34 00 33 00 45 00 35 00 64 00 59 00 31 00 38 00 } //01 00  MnAuSjmDdiKM9y6Biw9KfNgUu943E5dY18
		$a_01_1 = {46 00 49 00 53 00 48 00 57 00 4f 00 52 00 4b 00 } //01 00  FISHWORK
		$a_01_2 = {4d 00 49 00 43 00 52 00 4f 00 50 00 48 00 54 00 48 00 41 00 4c 00 } //01 00  MICROPHTHAL
		$a_01_3 = {4e 00 4f 00 4e 00 44 00 45 00 47 00 45 00 4e 00 45 00 52 00 } //01 00  NONDEGENER
		$a_01_4 = {53 00 74 00 6a 00 65 00 72 00 6e 00 65 00 6b 00 72 00 69 00 67 00 6f 00 38 00 } //01 00  Stjernekrigo8
		$a_01_5 = {45 00 53 00 42 00 41 00 59 00 44 00 49 00 4c 00 41 00 54 00 } //00 00  ESBAYDILAT
		$a_01_6 = {00 67 16 00 } //00 77 
	condition:
		any of ($a_*)
 
}