
rule Trojan_Win64_Bumblebee_FG_MTB{
	meta:
		description = "Trojan:Win64/Bumblebee.FG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 8b 43 10 bf 01 00 00 00 48 8b 93 a8 00 00 00 49 8b 88 20 01 00 00 48 33 cd } //01 00 
		$a_01_1 = {4c 89 64 24 70 4c 2b f1 43 8a 0c 0c 2a 4c 24 68 32 4c 24 60 49 8b 43 58 41 88 0c 01 } //01 00 
		$a_01_2 = {49 8b 87 c8 01 00 00 49 2b 47 60 49 31 87 58 02 00 00 49 8b 87 18 02 00 00 48 0f af c1 49 89 87 18 02 00 00 49 8b 87 20 03 00 00 48 35 } //01 00 
		$a_01_3 = {48 31 8a 08 04 00 00 48 8b 85 78 06 00 00 48 89 45 78 } //00 00 
	condition:
		any of ($a_*)
 
}