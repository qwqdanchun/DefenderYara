
rule Trojan_Win32_Favadd_T{
	meta:
		description = "Trojan:Win32/Favadd.T,SIGNATURE_TYPE_PEHSTR,0f 00 0f 00 0b 00 00 0a 00 "
		
	strings :
		$a_01_0 = {63 3a 5c 00 55 52 4c 00 49 6e 74 65 72 6e 65 74 53 68 6f 72 74 63 75 74 00 00 00 00 30 00 00 00 49 63 6f 6e 49 6e 64 65 78 00 00 00 49 6e 74 65 72 6e 65 74 53 68 6f 72 74 63 75 74 00 00 00 00 49 63 6f 6e 46 69 6c 65 00 00 00 00 49 6e 74 65 72 6e 65 74 53 68 6f 72 74 63 75 74 00 00 00 00 68 74 74 70 3a 2f 2f 77 77 77 2e } //01 00 
		$a_01_1 = {4f 6e 6c 69 6e 65 20 50 68 61 72 6d 61 63 79 2e 75 72 6c } //01 00  Online Pharmacy.url
		$a_01_2 = {53 65 78 75 61 6c 20 45 6e 68 61 6e 63 65 72 73 2e 75 72 6c } //01 00  Sexual Enhancers.url
		$a_01_3 = {53 77 69 6e 67 65 72 20 43 6c 75 62 73 2e 75 72 6c } //01 00  Swinger Clubs.url
		$a_01_4 = {4f 6e 6c 69 6e 65 20 43 61 73 69 6e 6f 2e 75 72 6c } //01 00  Online Casino.url
		$a_01_5 = {42 6c 61 63 6b 20 4a 61 63 6b 2e 75 72 6c } //01 00  Black Jack.url
		$a_01_6 = {4f 6e 6c 69 6e 65 20 50 6f 6b 65 72 2e 75 72 6c } //01 00  Online Poker.url
		$a_01_7 = {4f 6e 6c 69 6e 65 20 44 61 74 69 6e 67 2e 75 72 6c } //01 00  Online Dating.url
		$a_01_8 = {52 65 6d 6f 76 65 20 53 70 79 77 61 72 65 2e 75 72 6c } //01 00  Remove Spyware.url
		$a_01_9 = {4e 65 74 77 6f 72 6b 20 53 65 63 75 72 69 74 79 2e 75 72 6c } //01 00  Network Security.url
		$a_01_10 = {53 70 61 6d 20 46 69 6c 74 65 72 73 2e 75 72 6c } //00 00  Spam Filters.url
	condition:
		any of ($a_*)
 
}