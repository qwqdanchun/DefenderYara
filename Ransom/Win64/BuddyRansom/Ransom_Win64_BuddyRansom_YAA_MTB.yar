
rule Ransom_Win64_BuddyRansom_YAA_MTB{
	meta:
		description = "Ransom:Win64/BuddyRansom.YAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {38 c2 73 17 41 0f b7 cb 41 ff c3 0f b6 2c 0b 89 d1 83 c2 08 d3 e5 41 01 e8 eb 90 01 01 44 89 c1 29 c2 21 f9 66 43 89 4c 51 90 01 01 44 89 e1 49 ff c2 41 d3 e8 90 00 } //01 00 
		$a_01_1 = {44 31 dd 44 21 d5 41 c1 ca 02 31 dd 01 f5 44 89 e6 c1 c6 05 01 f5 8b 71 } //00 00 
		$a_00_2 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}