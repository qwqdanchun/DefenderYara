
rule Ransom_Win32_Gandcrab_J_MTB{
	meta:
		description = "Ransom:Win32/Gandcrab.J!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {01 4c cd 21 54 68 69 73 20 90 19 01 01 70 90 19 01 01 72 90 19 01 01 6f 90 19 01 01 67 90 19 01 01 72 90 19 01 01 61 6d 20 63 61 6e 6e 6f 74 20 62 65 20 72 75 6e 20 69 6e 20 44 4f 53 20 6d 6f 64 65 90 00 } //01 00 
		$a_02_1 = {ff ff 30 04 37 6a 00 ff 15 90 01 03 00 8d 85 90 01 04 50 6a 00 ff 15 90 01 03 00 46 3b 75 08 7c db 90 00 } //01 00 
		$a_02_2 = {c1 e8 10 25 ff 7f 00 00 c3 90 0a 3f 00 a1 90 01 03 00 69 c0 90 01 04 05 90 01 04 a3 90 01 03 00 c1 e8 10 25 ff 7f 00 00 c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}