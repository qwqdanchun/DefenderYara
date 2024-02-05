
rule Worm_Win32_Morto_E{
	meta:
		description = "Worm:Win32/Morto.E,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {0f be 08 8a 8c 0d 80 fd ff ff eb 90 14 88 0f 90 00 } //01 00 
		$a_01_1 = {8b 75 0c 8b 45 08 80 38 00 74 05 80 3e 00 75 0a 83 7d 10 00 } //01 00 
		$a_03_2 = {ff 45 fc 83 45 f8 04 8b 45 fc 83 45 f4 02 3b 46 18 0f 82 90 01 02 ff ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}