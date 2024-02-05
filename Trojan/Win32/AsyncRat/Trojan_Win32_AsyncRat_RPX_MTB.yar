
rule Trojan_Win32_AsyncRat_RPX_MTB{
	meta:
		description = "Trojan:Win32/AsyncRat.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 40 68 00 10 00 00 ff 74 24 10 6a 00 ff 15 90 01 04 8b f0 85 f6 74 21 ff 74 24 08 ff 74 24 10 56 e8 1f 12 00 00 83 c4 0c ff d6 68 00 80 00 00 6a 00 56 ff 15 90 01 04 ff 74 24 0c e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_AsyncRat_RPX_MTB_2{
	meta:
		description = "Trojan:Win32/AsyncRat.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 40 68 00 10 00 00 2b f3 56 6a 00 ff 15 90 01 04 8b f8 85 ff 90 00 } //01 00 
		$a_01_1 = {31 33 34 2e 31 32 32 2e 31 33 33 2e 34 39 } //01 00 
		$a_01_2 = {43 6c 69 65 6e 74 2e 62 69 6e } //01 00 
		$a_01_3 = {47 61 72 62 61 67 65 31 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_AsyncRat_RPX_MTB_3{
	meta:
		description = "Trojan:Win32/AsyncRat.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 0b 00 00 0a 00 "
		
	strings :
		$a_01_0 = {61 48 52 30 63 48 4d 36 4c 79 39 77 59 58 4e 30 5a 53 35 6d 62 79 39 79 59 58 63 76 4d 47 45 78 4e 57 59 79 5a 44 68 6b 4e 47 4d 31 } //01 00 
		$a_01_1 = {57 61 69 74 46 6f 72 53 69 6e 67 6c 65 4f 62 6a 65 63 74 } //01 00 
		$a_01_2 = {43 72 79 70 74 53 74 72 69 6e 67 54 6f 42 69 6e 61 72 79 41 } //01 00 
		$a_01_3 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //01 00 
		$a_01_4 = {43 72 65 61 74 65 54 68 72 65 61 64 } //01 00 
		$a_01_5 = {47 65 74 54 65 6d 70 50 61 74 68 41 } //01 00 
		$a_01_6 = {53 6c 65 65 70 } //01 00 
		$a_01_7 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00 
		$a_01_8 = {66 74 65 6c 6c } //01 00 
		$a_01_9 = {66 73 65 65 6b } //01 00 
		$a_01_10 = {66 6f 70 65 6e 5f 73 } //00 00 
	condition:
		any of ($a_*)
 
}