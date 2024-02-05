
rule Trojan_BAT_SnakeKeylogger_NV_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.NV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 dd a2 fd 09 0f 00 00 00 fa 25 33 00 16 00 00 02 00 00 00 a4 00 00 00 4f 00 00 00 42 03 00 00 a0 07 00 00 13 04 00 00 40 01 00 00 56 00 00 00 1b 00 00 00 01 00 00 00 01 00 00 00 76 00 00 00 02 } //01 00 
		$a_01_1 = {57 5d a2 c9 09 0b 00 00 00 fa 25 33 00 16 00 00 02 00 00 00 96 00 00 00 45 00 00 00 17 03 00 00 e0 03 00 00 13 04 00 00 2c 01 00 00 56 00 00 00 1a 00 00 00 01 00 00 00 69 00 00 00 02 00 00 00 04 } //00 00 
	condition:
		any of ($a_*)
 
}