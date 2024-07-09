
rule TrojanClicker_BAT_Rullanu_A{
	meta:
		description = "TrojanClicker:BAT/Rullanu.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {72 05 00 00 70 28 ?? 00 00 ?? 72 13 00 00 70 28 ?? 00 00 ?? 28 ?? 00 00 ?? 0a [0-05] 06 72 4b 00 00 70 [0-05] 16 fe 01 0b 07 2d ?? 00 [0-05] 17 28 ?? 00 00 ?? 00 00 2a } //1
		$a_03_1 = {7e 02 00 00 04 7e ?? 00 00 0a 17 ?? ?? ?? ?? ?? 16 fe 01 0c 08 2d ?? 00 28 ?? 00 00 06 00 [0-0a] 1f 1c 28 ?? 00 00 ?? 72 01 00 00 70 7e ?? 00 00 04 28 ?? 00 00 ?? 0a 28 ?? 00 00 06 00 7e ?? 00 00 04 06 28 ?? 00 00 06 00 [0-05] 28 ?? 00 00 ?? 00 [0-05] 16 28 ?? 00 00 ?? 00 73 ?? 00 00 06 0b } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}