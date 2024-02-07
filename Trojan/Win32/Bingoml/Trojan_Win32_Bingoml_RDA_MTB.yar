
rule Trojan_Win32_Bingoml_RDA_MTB{
	meta:
		description = "Trojan:Win32/Bingoml.RDA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 33 00 70 00 63 00 36 00 52 00 57 00 4f 00 67 00 65 00 63 00 74 00 47 00 54 00 46 00 71 00 43 00 6f 00 77 00 78 00 6a 00 65 00 47 00 79 00 33 00 58 00 49 00 47 00 50 00 74 00 4c 00 77 00 4e 00 72 00 73 00 72 00 32 00 7a 00 44 00 63 00 74 00 59 00 44 00 34 00 68 00 41 00 55 00 35 00 70 00 6a 00 34 00 47 00 57 00 37 00 72 00 6d 00 38 00 67 00 48 00 72 00 48 00 79 00 54 00 42 00 36 00 } //01 00  Global\3pc6RWOgectGTFqCowxjeGy3XIGPtLwNrsr2zDctYD4hAU5pj4GW7rm8gHrHyTB6
		$a_01_1 = {75 00 73 00 65 00 72 00 70 00 72 00 6f 00 66 00 69 00 6c 00 65 00 } //01 00  userprofile
		$a_01_2 = {25 00 74 00 65 00 6d 00 70 00 25 00 5c 00 } //02 00  %temp%\
		$a_03_3 = {64 a1 30 00 00 00 68 00 00 00 f0 6a 01 6a 00 8b 40 0c 6a 00 68 90 01 04 8b 40 14 8b 40 20 90 00 } //02 00 
		$a_01_4 = {0f b6 04 39 41 33 c6 c1 ee 08 25 ff 00 00 00 33 b4 85 00 fc ff ff 3b ca } //00 00 
	condition:
		any of ($a_*)
 
}