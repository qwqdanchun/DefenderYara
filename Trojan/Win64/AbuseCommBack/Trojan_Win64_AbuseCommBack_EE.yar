
rule Trojan_Win64_AbuseCommBack_EE{
	meta:
		description = "Trojan:Win64/AbuseCommBack.EE,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 30 00 32 00 43 00 37 00 35 00 45 00 36 00 30 00 32 00 31 00 31 00 33 00 31 00 34 00 46 00 34 00 41 00 36 00 39 00 43 00 33 00 32 00 33 00 41 00 33 00 43 00 45 00 33 00 33 00 34 00 44 00 37 00 35 00 43 00 37 00 32 00 43 00 44 00 38 00 43 00 37 00 34 00 32 00 46 00 33 00 45 00 44 00 31 00 36 00 38 00 34 00 34 00 37 00 34 00 30 00 35 00 43 00 35 00 34 00 31 00 44 00 46 00 30 00 35 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>02C75E60211314F4A69C323A3CE334D75C72CD8C742F3ED168447405C541DF05</p>
		$a_01_1 = {30 32 43 37 35 45 36 30 32 31 31 33 31 34 46 34 41 36 39 43 33 32 33 41 33 43 45 33 33 34 44 37 35 43 37 32 43 44 38 43 37 34 32 46 33 45 44 31 36 38 34 34 37 34 30 35 43 35 34 31 44 46 30 35 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 30 32 43 37 35 45 36 30 32 31 31 33 31 34 46 34 41 36 39 43 33 32 33 41 33 43 45 33 33 34 44 37 35 43 37 32 43 44 38 43 37 34 32 46 33 45 44 31 36 38 34 34 37 34 30 35 43 35 34 31 44 46 30 35 69 64 } //01 00  tableid02C75E60211314F4A69C323A3CE334D75C72CD8C742F3ED168447405C541DF05id
	condition:
		any of ($a_*)
 
}