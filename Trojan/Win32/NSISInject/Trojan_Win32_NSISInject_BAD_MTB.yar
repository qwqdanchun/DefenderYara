
rule Trojan_Win32_NSISInject_BAD_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.BAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 00 6f 00 77 00 65 00 72 00 6f 00 66 00 66 00 2d 00 76 00 6d 00 2d 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 2e 00 62 00 61 00 74 00 } //01 00 
		$a_01_1 = {42 00 61 00 74 00 74 00 65 00 72 00 79 00 49 00 6e 00 66 00 6f 00 56 00 69 00 65 00 77 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {42 00 72 00 75 00 67 00 65 00 72 00 6f 00 72 00 64 00 62 00 6f 00 67 00 65 00 6e 00 73 00 2e 00 62 00 69 00 62 00 } //01 00 
		$a_01_3 = {54 00 65 00 6d 00 70 00 6f 00 72 00 61 00 72 00 79 00 20 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 52 00 45 00 41 00 47 00 45 00 52 00 45 00 4e 00 44 00 45 00 53 00 5c 00 76 00 6f 00 6c 00 64 00 67 00 69 00 66 00 74 00 73 00 64 00 6f 00 6d 00 73 00 74 00 6f 00 6c 00 65 00 6e 00 65 00 5c 00 50 00 69 00 67 00 74 00 61 00 69 00 6c 00 31 00 38 00 33 00 5c 00 48 00 6f 00 66 00 6c 00 65 00 76 00 65 00 72 00 61 00 6e 00 64 00 72 00 2e 00 6c 00 6e 00 6b 00 } //01 00 
		$a_01_4 = {53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 41 00 72 00 75 00 6e 00 64 00 69 00 66 00 65 00 72 00 6f 00 75 00 73 00 5c 00 52 00 65 00 66 00 75 00 72 00 6c 00 5c 00 50 00 6c 00 61 00 73 00 74 00 69 00 63 00 6c 00 6f 00 6d 00 6d 00 65 00 } //01 00 
		$a_01_5 = {5c 00 4b 00 72 00 65 00 64 00 69 00 74 00 76 00 72 00 64 00 69 00 67 00 65 00 5c 00 4f 00 6c 00 79 00 6d 00 70 00 69 00 61 00 64 00 65 00 76 00 69 00 6e 00 64 00 65 00 72 00 65 00 6e 00 73 00 5c 00 50 00 73 00 61 00 6c 00 74 00 65 00 72 00 73 00 2e 00 53 00 6f 00 6d 00 } //00 00 
	condition:
		any of ($a_*)
 
}