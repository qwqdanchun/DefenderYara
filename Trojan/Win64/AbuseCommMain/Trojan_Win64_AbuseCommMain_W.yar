
rule Trojan_Win64_AbuseCommMain_W{
	meta:
		description = "Trojan:Win64/AbuseCommMain.W,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 38 00 38 00 32 00 34 00 35 00 42 00 42 00 38 00 33 00 46 00 31 00 34 00 46 00 44 00 32 00 45 00 43 00 35 00 31 00 37 00 45 00 33 00 42 00 30 00 39 00 45 00 35 00 36 00 46 00 39 00 36 00 38 00 43 00 31 00 43 00 34 00 43 00 44 00 38 00 31 00 36 00 32 00 44 00 35 00 45 00 35 00 33 00 34 00 41 00 44 00 30 00 39 00 34 00 33 00 38 00 37 00 31 00 32 00 45 00 38 00 44 00 38 00 35 00 44 00 } //01 00  tox:88245BB83F14FD2EC517E3B09E56F968C1C4CD8162D5E534AD09438712E8D85D
		$a_02_1 = {38 38 32 34 35 42 42 38 33 46 31 34 46 44 32 45 43 35 31 37 45 33 42 30 39 45 35 36 46 39 36 38 43 31 43 34 43 44 38 31 36 32 44 35 45 35 33 34 41 44 30 39 34 33 38 37 31 32 45 38 44 38 35 44 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {38 38 32 34 35 42 42 38 33 46 31 34 46 44 32 45 43 35 31 37 45 33 42 30 39 45 35 36 46 39 36 38 43 31 43 34 43 44 38 31 36 32 44 35 45 35 33 34 41 44 30 39 34 33 38 37 31 32 45 38 44 38 35 44 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 38 38 32 34 35 42 42 38 33 46 31 34 46 44 32 45 43 35 31 37 45 33 42 30 39 45 35 36 46 39 36 38 43 31 43 34 43 44 38 31 36 32 44 35 45 35 33 34 41 44 30 39 34 33 38 37 31 32 45 38 44 38 35 44 2e 68 73 74 72 } //00 00  \tox\88245BB83F14FD2EC517E3B09E56F968C1C4CD8162D5E534AD09438712E8D85D.hstr
	condition:
		any of ($a_*)
 
}