
rule Ransom_Win32_Shade_B_bit{
	meta:
		description = "Ransom:Win32/Shade.B!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {55 8b ec 51 c7 45 90 01 01 00 00 00 00 a1 90 01 04 03 45 90 01 01 8b 0d 90 01 04 03 4d 90 01 01 8b 15 90 01 04 0f b6 0c 0a f7 d9 8b 15 90 01 04 0f b6 04 02 2b c1 8b 0d 90 01 04 03 4d 90 01 01 8b 15 90 01 04 88 04 0a 90 00 } //01 00 
		$a_01_1 = {8b 55 08 8b 02 03 45 fc 8b 4d 08 89 01 } //01 00 
		$a_03_2 = {8b ff 8b ca a3 90 01 04 31 0d 90 01 04 a1 90 00 } //01 00 
		$a_03_3 = {8b 11 89 15 90 01 04 a1 90 01 04 83 e8 0b a3 90 01 04 8b 15 90 01 04 83 c2 0b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}