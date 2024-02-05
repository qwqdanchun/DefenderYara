
rule Trojan_Win32_Bamital_E{
	meta:
		description = "Trojan:Win32/Bamital.E,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 75 fc 8b 45 08 ff d6 61 eb 06 83 7d 0c 00 90 09 05 00 e8 90 00 } //01 00 
		$a_03_1 = {8b 75 fc b9 01 00 00 00 8b 45 08 ff d6 61 eb 0b 83 7d 0c 00 90 09 05 00 e8 90 00 } //01 00 
		$a_03_2 = {8b 75 f0 b9 01 00 00 00 8b 45 08 ff d6 61 eb 0b 83 7d 0c 00 90 09 05 00 e8 90 00 } //01 00 
		$a_03_3 = {8b 75 ec b9 01 00 00 00 8b 45 08 ff d6 61 eb 0b 83 7d 0c 00 90 09 05 00 e8 90 00 } //01 00 
		$a_03_4 = {58 8b 75 e4 b9 01 00 00 00 8b 45 08 ff d6 61 eb 0b 83 7d 0c 00 90 09 05 00 e8 90 00 } //01 00 
		$a_03_5 = {8b 75 e4 b9 01 00 00 00 8b 45 08 ff d6 61 eb 0b 83 7d 0c 00 90 09 05 00 e8 90 00 } //01 00 
		$a_03_6 = {8b 7d fc b9 01 00 00 00 8b 45 08 ff d7 61 eb 0b 83 7d 0c 00 90 09 05 00 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}