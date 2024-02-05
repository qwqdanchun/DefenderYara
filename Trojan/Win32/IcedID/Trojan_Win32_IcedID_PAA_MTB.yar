
rule Trojan_Win32_IcedID_PAA_MTB{
	meta:
		description = "Trojan:Win32/IcedID.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_81_0 = {3c 63 6f 6d 6d 61 6e 64 3a 70 61 72 61 6d 65 74 65 72 20 72 65 71 75 69 72 65 64 3d 22 66 61 6c 73 65 22 20 76 61 72 69 61 62 6c 65 4c 65 6e 67 74 68 3d 22 66 61 6c 73 65 22 20 67 6c 6f 62 62 69 6e 67 3d 22 66 61 6c 73 65 22 20 70 69 70 65 6c 69 6e 65 49 6e 70 75 74 3d 22 66 61 6c 73 65 22 20 70 6f 73 69 74 69 6f 6e 3d 22 6e 61 6d 65 64 22 3e } //01 00 
		$a_01_1 = {47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 49 64 } //01 00 
		$a_01_2 = {47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 } //01 00 
		$a_01_3 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00 
		$a_01_4 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 } //01 00 
		$a_01_5 = {47 65 74 50 72 6f 63 41 64 64 72 65 73 73 } //01 00 
		$a_01_6 = {47 65 74 54 69 63 6b 43 6f 75 6e 74 } //01 00 
		$a_01_7 = {57 72 69 74 65 46 69 6c 65 } //01 00 
		$a_01_8 = {53 6c 65 65 70 } //01 00 
		$a_01_9 = {2e 70 64 62 } //00 00 
	condition:
		any of ($a_*)
 
}