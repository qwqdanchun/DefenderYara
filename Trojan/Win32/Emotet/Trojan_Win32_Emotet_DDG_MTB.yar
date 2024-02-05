
rule Trojan_Win32_Emotet_DDG_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DDG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0a 00 00 08 00 "
		
	strings :
		$a_02_0 = {6a 40 68 00 30 00 00 56 57 ff 54 24 90 01 01 50 ff 54 24 90 01 01 8b 54 24 90 01 01 8b f0 8b 44 24 90 01 01 52 50 56 e8 90 01 04 83 c4 0c ff d6 5f 5e b8 01 00 00 00 5b 83 c4 20 90 00 } //04 00 
		$a_81_1 = {32 59 50 5a 68 4e 6d 46 32 4b 6b 67 32 4b 72 59 73 64 69 74 32 59 72 59 3d } //01 00 
		$a_01_2 = {47 00 65 00 74 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //01 00 
		$a_01_3 = {56 00 69 00 72 00 74 00 75 00 61 00 6c 00 41 00 6c 00 6c 00 6f 00 63 00 45 00 78 00 4e 00 75 00 6d 00 61 00 } //01 00 
		$a_01_4 = {43 00 72 00 79 00 70 00 74 00 53 00 74 00 72 00 69 00 6e 00 67 00 54 00 6f 00 42 00 69 00 6e 00 61 00 72 00 79 00 41 00 } //01 00 
		$a_01_5 = {46 00 69 00 6e 00 64 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 41 00 } //01 00 
		$a_01_6 = {4c 00 6f 00 61 00 64 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 } //01 00 
		$a_01_7 = {53 00 69 00 7a 00 65 00 6f 00 66 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 } //01 00 
		$a_01_8 = {4c 00 6f 00 63 00 6b 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 } //01 00 
		$a_01_9 = {50 00 6c 00 65 00 61 00 73 00 65 00 20 00 65 00 6e 00 74 00 65 00 72 00 20 00 61 00 20 00 63 00 75 00 72 00 72 00 65 00 6e 00 63 00 79 00 2e 00 } //00 00 
	condition:
		any of ($a_*)
 
}