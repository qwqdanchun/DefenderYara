
rule Ransom_Win32_Gandcrab_B_MTB{
	meta:
		description = "Ransom:Win32/Gandcrab.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {8d 45 ff 50 6a 00 ff d3 6a 00 ff 15 90 01 04 e8 90 01 02 ff ff 30 04 37 83 ee 01 79 db 90 00 } //01 00 
		$a_02_1 = {8d 45 f0 50 56 56 56 56 56 56 ff 15 90 01 04 e8 90 01 02 ff ff 30 04 3b 4f 79 dd 90 00 } //01 00 
		$a_00_2 = {00 40 3d 00 01 00 00 75 f2 } //01 00 
		$a_02_3 = {8d 45 f8 50 6a 00 ff 15 90 01 04 6a 00 ff 15 90 01 04 8b 0d 90 01 04 8b 15 90 01 04 41 88 9a 90 01 04 89 0d 90 01 04 81 f9 00 01 00 00 0f 85 90 01 01 ff ff ff 90 00 } //01 00 
		$a_02_4 = {8d 45 f4 50 56 ff 15 90 01 04 8b 0d 90 01 04 a1 90 01 04 41 88 98 90 01 04 89 0d 90 01 04 81 f9 00 01 00 00 0f 85 90 01 01 ff ff ff 90 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 eb 
	condition:
		any of ($a_*)
 
}