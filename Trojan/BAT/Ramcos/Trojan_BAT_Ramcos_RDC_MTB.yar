
rule Trojan_BAT_Ramcos_RDC_MTB{
	meta:
		description = "Trojan:BAT/Ramcos.RDC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 67 73 65 64 6d 61 6c 6b 6a 7a 6d 74 72 79 76 } //01 00  Tgsedmalkjzmtryv
		$a_01_1 = {65 00 61 00 66 00 66 00 32 00 31 00 31 00 61 00 65 00 66 00 39 00 36 00 34 00 31 00 37 00 61 00 63 00 30 00 36 00 37 00 66 00 38 00 35 00 63 00 66 00 30 00 66 00 61 00 39 00 38 00 61 00 33 00 } //01 00  eaff211aef96417ac067f85cf0fa98a3
		$a_01_2 = {6e 63 72 79 70 74 } //01 00  ncrypt
		$a_01_3 = {6b 65 72 6e 65 6c 33 32 } //01 00  kernel32
		$a_01_4 = {4e 43 72 79 70 74 45 6e 63 72 79 70 74 } //01 00  NCryptEncrypt
		$a_01_5 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 45 78 } //01 00  VirtualProtectEx
		$a_01_6 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //00 00  WriteProcessMemory
	condition:
		any of ($a_*)
 
}