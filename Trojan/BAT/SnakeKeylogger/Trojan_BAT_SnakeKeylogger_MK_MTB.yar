
rule Trojan_BAT_SnakeKeylogger_MK_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.MK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 0a 00 "
		
	strings :
		$a_01_0 = {53 4e 41 4b 45 2d 4b 45 59 4c 4f 47 47 45 52 } //0a 00 
		$a_03_1 = {53 2d 2d 2d 2d 2d 2d 2d 2d 4e 2d 2d 2d 2d 2d 2d 2d 2d 41 2d 2d 2d 2d 2d 2d 2d 2d 4b 2d 2d 2d 2d 2d 2d 2d 2d 45 90 02 16 53 4e 41 4b 45 2d 4b 45 59 4c 4f 47 47 45 52 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_SnakeKeylogger_MK_MTB_2{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.MK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {53 4e 41 4b 45 2d 4b 45 59 4c 4f 47 47 45 52 } //0a 00 
		$a_01_1 = {53 2d 2d 2d 2d 2d 2d 2d 2d 4e 2d 2d 2d 2d 2d 2d 2d 2d 41 2d 2d 2d 2d 2d 2d 2d 2d 4b 2d 2d 2d 2d 2d 2d 2d 2d 45 } //01 00 
		$a_01_2 = {43 72 65 64 65 6e 74 69 61 6c 4d 6f 64 65 6c } //01 00 
		$a_01_3 = {67 65 74 5f 55 73 65 72 6e 61 6d 65 } //01 00 
		$a_01_4 = {73 65 74 5f 55 73 65 72 6e 61 6d 65 } //01 00 
		$a_01_5 = {47 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //00 00 
		$a_00_6 = {78 95 00 00 09 00 09 00 03 00 00 05 00 2a 01 0d 09 07 16 07 } //8e 69 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_SnakeKeylogger_MK_MTB_3{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.MK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 03 00 00 05 00 "
		
	strings :
		$a_01_0 = {0d 09 07 16 07 8e 69 6f 0d 00 00 0a 13 04 28 06 00 00 0a 11 04 6f 0e 00 00 0a 13 05 dd 0d 00 00 00 26 7e 0f 00 00 0a 13 05 dd } //02 00 
		$a_01_1 = {45 00 78 00 70 00 61 00 6e 00 73 00 69 00 6f 00 6e 00 5f 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 5f 00 57 00 61 00 6e 00 69 00 75 00 72 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_01_2 = {54 00 54 00 52 00 44 00 5a 00 42 00 57 00 49 00 69 00 6d 00 6a 00 4a 00 5a 00 72 00 47 00 } //00 00 
	condition:
		any of ($a_*)
 
}