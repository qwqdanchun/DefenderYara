
rule Trojan_Win32_Emotet_P_MTB{
	meta:
		description = "Trojan:Win32/Emotet.P!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {6a 00 6a 40 68 00 30 00 00 50 6a 00 55 ff d7 } //01 00 
		$a_00_1 = {8d 44 24 30 50 51 56 ff 54 24 38 83 c4 1c ff d6 5f 5e 5d 33 c0 5b 83 c4 38 c3 } //01 00 
		$a_02_2 = {6a 00 6a 00 56 6a 00 6a 01 55 57 ff 15 90 01 04 85 c0 75 90 00 } //01 00 
		$a_00_3 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 42 00 75 00 62 00 62 00 6c 00 65 00 20 00 42 00 72 00 65 00 61 00 6b 00 65 00 72 00 } //01 00  SOFTWARE\Bubble Breaker
		$a_00_4 = {43 00 72 00 79 00 70 00 74 00 53 00 74 00 72 00 69 00 6e 00 67 00 54 00 6f 00 42 00 69 00 6e 00 61 00 72 00 79 00 41 00 } //00 00  CryptStringToBinaryA
	condition:
		any of ($a_*)
 
}