
rule Trojan_BAT_Nanocore_ABO_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.ABO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 55 a2 cb 09 1f 00 00 00 fa 25 33 00 16 00 00 02 00 00 00 9b 00 00 00 14 00 00 00 37 01 00 00 d1 02 00 00 c8 01 00 00 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_01_2 = {47 00 75 00 61 00 72 00 64 00 65 00 72 00 69 00 61 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00 
		$a_01_3 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 } //01 00 
		$a_01_4 = {72 00 65 00 64 00 5f 00 6c 00 6f 00 76 00 65 00 } //01 00 
		$a_01_5 = {24 35 35 64 31 30 35 36 64 2d 65 66 37 39 2d 34 37 33 36 2d 61 31 34 31 2d 30 65 33 36 33 32 38 34 33 30 35 34 } //00 00 
	condition:
		any of ($a_*)
 
}