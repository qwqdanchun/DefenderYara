
rule Trojan_Win64_AbuseCommMain_CM{
	meta:
		description = "Trojan:Win64/AbuseCommMain.CM,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 46 00 44 00 46 00 38 00 36 00 43 00 42 00 32 00 32 00 36 00 38 00 33 00 33 00 33 00 38 00 32 00 43 00 45 00 36 00 43 00 31 00 43 00 34 00 41 00 37 00 35 00 43 00 39 00 46 00 39 00 32 00 42 00 46 00 44 00 37 00 43 00 43 00 41 00 30 00 46 00 32 00 41 00 41 00 36 00 41 00 38 00 39 00 30 00 45 00 30 00 45 00 36 00 37 00 33 00 32 00 38 00 42 00 36 00 35 00 33 00 46 00 45 00 32 00 30 00 } //01 00  tox:FDF86CB226833382CE6C1C4A75C9F92BFD7CCA0F2AA6A890E0E67328B653FE20
		$a_02_1 = {46 44 46 38 36 43 42 32 32 36 38 33 33 33 38 32 43 45 36 43 31 43 34 41 37 35 43 39 46 39 32 42 46 44 37 43 43 41 30 46 32 41 41 36 41 38 39 30 45 30 45 36 37 33 32 38 42 36 35 33 46 45 32 30 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {46 44 46 38 36 43 42 32 32 36 38 33 33 33 38 32 43 45 36 43 31 43 34 41 37 35 43 39 46 39 32 42 46 44 37 43 43 41 30 46 32 41 41 36 41 38 39 30 45 30 45 36 37 33 32 38 42 36 35 33 46 45 32 30 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 46 44 46 38 36 43 42 32 32 36 38 33 33 33 38 32 43 45 36 43 31 43 34 41 37 35 43 39 46 39 32 42 46 44 37 43 43 41 30 46 32 41 41 36 41 38 39 30 45 30 45 36 37 33 32 38 42 36 35 33 46 45 32 30 2e 68 73 74 72 } //00 00  \tox\FDF86CB226833382CE6C1C4A75C9F92BFD7CCA0F2AA6A890E0E67328B653FE20.hstr
	condition:
		any of ($a_*)
 
}