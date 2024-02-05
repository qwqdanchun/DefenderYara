
rule Trojan_Win32_NSISInject_AH_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.AH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 00 72 00 69 00 70 00 61 00 73 00 73 00 65 00 74 00 5c 00 46 00 6f 00 72 00 68 00 61 00 6e 00 64 00 6c 00 69 00 6e 00 67 00 73 00 67 00 72 00 75 00 6e 00 64 00 6c 00 61 00 67 00 65 00 6e 00 65 00 73 00 5c 00 70 00 61 00 73 00 74 00 61 00 65 00 72 00 6e 00 65 00 } //01 00 
		$a_01_1 = {4c 00 69 00 67 00 6b 00 61 00 70 00 65 00 6c 00 73 00 5c 00 41 00 63 00 72 00 6f 00 6d 00 6f 00 6e 00 6f 00 67 00 72 00 61 00 6d 00 6d 00 61 00 74 00 69 00 63 00 5c 00 50 00 73 00 79 00 63 00 68 00 6f 00 67 00 72 00 61 00 6d 00 2e 00 6c 00 6e 00 6b 00 } //01 00 
		$a_01_2 = {46 00 79 00 73 00 69 00 6b 00 6c 00 72 00 65 00 72 00 65 00 73 00 5c 00 43 00 6f 00 69 00 6e 00 6d 00 61 00 6b 00 69 00 6e 00 67 00 5c 00 4f 00 72 00 74 00 68 00 6f 00 64 00 6f 00 78 00 69 00 63 00 61 00 6c 00 6e 00 65 00 73 00 73 00 2e 00 69 00 6e 00 69 00 } //01 00 
		$a_01_3 = {4c 00 79 00 6d 00 70 00 68 00 6f 00 67 00 72 00 61 00 70 00 68 00 79 00 5c 00 54 00 6f 00 74 00 61 00 6b 00 74 00 65 00 72 00 65 00 5c 00 41 00 6e 00 69 00 6f 00 6e 00 69 00 63 00 61 00 6c 00 6c 00 79 00 31 00 38 00 35 00 2e 00 69 00 6e 00 69 00 } //01 00 
		$a_01_4 = {62 00 69 00 6c 00 6c 00 69 00 67 00 65 00 72 00 65 00 73 00 5c 00 54 00 69 00 74 00 74 00 75 00 70 00 70 00 65 00 64 00 5c 00 70 00 75 00 67 00 6e 00 61 00 63 00 69 00 6f 00 75 00 73 00 2e 00 55 00 6e 00 6f 00 } //01 00 
		$a_01_5 = {50 00 6f 00 6c 00 79 00 6d 00 65 00 74 00 61 00 6d 00 65 00 72 00 69 00 63 00 5c 00 55 00 65 00 72 00 68 00 6f 00 6c 00 64 00 65 00 6c 00 69 00 67 00 65 00 5c 00 44 00 76 00 72 00 67 00 74 00 72 00 65 00 72 00 73 00 2e 00 4d 00 61 00 6c 00 } //01 00 
		$a_01_6 = {56 00 61 00 67 00 61 00 62 00 6f 00 6e 00 64 00 69 00 7a 00 65 00 5c 00 52 00 6f 00 73 00 61 00 6c 00 69 00 6e 00 64 00 65 00 5c 00 54 00 6f 00 6e 00 65 00 66 00 61 00 6c 00 64 00 65 00 74 00 73 00 2e 00 64 00 6c 00 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}