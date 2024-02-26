
rule Trojan_BAT_RevengeRat_ARR_MTB{
	meta:
		description = "Trojan:BAT/RevengeRat.ARR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {01 0c 08 16 02 7b 90 01 01 00 00 04 28 90 01 01 00 00 0a a2 08 14 14 14 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 0a 06 28 90 01 01 00 00 0a 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_RevengeRat_ARR_MTB_2{
	meta:
		description = "Trojan:BAT/RevengeRat.ARR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {0a 17 12 00 15 6a 16 28 90 01 01 00 00 0a 17 8d 90 01 01 00 00 01 25 16 17 9e 28 90 01 01 00 00 0a 02 06 02 7b 90 01 01 00 00 04 28 90 01 01 00 00 0a 15 16 28 90 00 } //01 00 
		$a_01_1 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 49 00 4d 00 20 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 48 00 61 00 63 00 6b 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  taskkill /f /IM ProcessHacker.exe
		$a_01_2 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 49 00 4d 00 20 00 54 00 63 00 70 00 76 00 69 00 65 00 77 00 2e 00 65 00 78 00 65 00 } //01 00  taskkill /f /IM Tcpview.exe
		$a_01_3 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 49 00 4d 00 20 00 46 00 69 00 64 00 64 00 6c 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //00 00  taskkill /f /IM Fiddler.exe
	condition:
		any of ($a_*)
 
}