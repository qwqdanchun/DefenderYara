
rule Trojan_Win32_AutoitInject_DE_MTB{
	meta:
		description = "Trojan:Win32/AutoitInject.DE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {70 00 67 00 70 00 78 00 69 00 70 00 65 00 66 00 6d 00 79 00 6d 00 6a 00 2e 00 65 00 78 00 65 00 } //0a 00 
		$a_01_1 = {78 00 6a 00 75 00 6d 00 70 00 6f 00 6e 00 61 00 66 00 73 00 74 00 66 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {53 00 68 00 65 00 6c 00 6c 00 45 00 78 00 65 00 63 00 75 00 74 00 65 00 57 00 } //01 00 
		$a_01_3 = {44 00 6c 00 6c 00 43 00 61 00 6c 00 6c 00 } //01 00 
		$a_01_4 = {57 00 69 00 6e 00 64 00 6f 00 77 00 53 00 70 00 79 00 2e 00 61 00 68 00 6b 00 } //01 00 
		$a_01_5 = {41 00 55 00 33 00 5f 00 53 00 70 00 79 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_6 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00 
		$a_01_7 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //00 00 
	condition:
		any of ($a_*)
 
}