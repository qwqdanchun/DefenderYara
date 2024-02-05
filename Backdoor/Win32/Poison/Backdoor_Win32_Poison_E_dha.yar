
rule Backdoor_Win32_Poison_E_dha{
	meta:
		description = "Backdoor:Win32/Poison.E!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {56 57 b9 ae 04 00 00 8d 74 24 10 8b fb f3 a5 66 a5 a4 c6 43 05 2f c6 43 04 eb ff d5 83 f8 0c } //01 00 
		$a_03_1 = {6a 00 6a 00 6a 00 53 6a 00 6a 00 ff 15 90 01 04 8b f0 ff d5 83 f8 0c 75 90 01 01 6a 00 90 00 } //01 00 
		$a_00_2 = {b3 33 b1 81 b0 7e b2 3a } //00 00 
	condition:
		any of ($a_*)
 
}