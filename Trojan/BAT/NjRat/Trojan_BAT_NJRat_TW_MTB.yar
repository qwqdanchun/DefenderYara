
rule Trojan_BAT_NJRat_TW_MTB{
	meta:
		description = "Trojan:BAT/NJRat.TW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {64 6d 46 79 90 02 15 42 75 5a 58 63 67 51 57 4e 30 61 58 5a 6c 57 45 39 69 61 6d 56 6a 64 43 67 69 55 32 68 6c 62 47 77 75 51 58 42 77 62 47 6c 6a 59 58 52 70 62 32 34 69 4b 54 73 4e 90 02 15 55 32 68 6c 62 47 78 46 65 47 56 6a 64 58 52 6c 4b 43 4a 36 65 69 49 73 49 43 49 69 4c 43 41 69 49 69 77 67 49 6b 39 77 5a 57 34 69 4c 43 41 69 4d 53 49 70 4f 77 90 00 } //01 00 
		$a_81_1 = {48 69 64 64 65 6e 53 54 55 70 } //01 00  HiddenSTUp
		$a_81_2 = {5c 6f 69 2e 63 6f 6d 2e 6a 73 } //01 00  \oi.com.js
		$a_81_3 = {5c 6f 69 2e 63 6f 6d 2e 6c 6e 6b } //01 00  \oi.com.lnk
		$a_81_4 = {5c 41 56 47 5c 41 6e 74 69 76 69 72 75 73 5c 41 56 47 55 49 2e 65 78 65 } //01 00  \AVG\Antivirus\AVGUI.exe
		$a_81_5 = {5c 41 56 41 53 54 20 53 6f 66 74 77 61 72 65 5c 41 76 61 73 74 5c 61 76 61 73 74 55 49 2e 65 78 65 } //01 00  \AVAST Software\Avast\avastUI.exe
		$a_81_6 = {5c 4b 61 73 70 65 72 53 6b 79 20 4c 61 62 5c } //00 00  \KasperSky Lab\
		$a_00_7 = {5d 04 00 00 } //8d 41 
	condition:
		any of ($a_*)
 
}