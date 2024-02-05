
rule Worm_Win32_Gamarue_AB{
	meta:
		description = "Worm:Win32/Gamarue.AB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b e5 5d c2 10 00 90 09 20 00 a1 90 01 04 03 45 90 01 01 88 10 eb 90 01 01 81 7d 14 90 01 04 75 05 e8 90 01 04 ff 15 90 00 } //01 00 
		$a_03_1 = {81 7d 14 88 88 88 08 75 05 e8 90 01 04 8b e5 5d c2 10 00 90 00 } //01 00 
		$a_03_2 = {8b e5 5d c2 10 00 90 09 13 00 8b 0d 90 01 04 03 4d 90 01 01 88 01 eb 90 01 01 ff 15 90 1b 01 90 00 } //0a 00 
		$a_01_3 = {6a 40 68 00 10 00 00 68 00 10 00 00 6a 00 ff 55 } //00 00 
	condition:
		any of ($a_*)
 
}