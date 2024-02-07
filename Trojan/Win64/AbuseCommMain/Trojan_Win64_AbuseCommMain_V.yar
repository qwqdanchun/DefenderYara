
rule Trojan_Win64_AbuseCommMain_V{
	meta:
		description = "Trojan:Win64/AbuseCommMain.V,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 45 00 39 00 30 00 36 00 43 00 37 00 31 00 30 00 45 00 31 00 35 00 42 00 43 00 42 00 30 00 34 00 35 00 41 00 44 00 30 00 36 00 33 00 33 00 38 00 31 00 33 00 32 00 41 00 44 00 42 00 34 00 35 00 39 00 31 00 42 00 46 00 43 00 45 00 30 00 31 00 30 00 37 00 42 00 36 00 36 00 43 00 46 00 41 00 36 00 34 00 44 00 44 00 32 00 36 00 41 00 32 00 34 00 39 00 33 00 31 00 44 00 45 00 36 00 30 00 } //01 00  tox:E906C710E15BCB045AD06338132ADB4591BFCE0107B66CFA64DD26A24931DE60
		$a_02_1 = {45 39 30 36 43 37 31 30 45 31 35 42 43 42 30 34 35 41 44 30 36 33 33 38 31 33 32 41 44 42 34 35 39 31 42 46 43 45 30 31 30 37 42 36 36 43 46 41 36 34 44 44 32 36 41 32 34 39 33 31 44 45 36 30 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {45 39 30 36 43 37 31 30 45 31 35 42 43 42 30 34 35 41 44 30 36 33 33 38 31 33 32 41 44 42 34 35 39 31 42 46 43 45 30 31 30 37 42 36 36 43 46 41 36 34 44 44 32 36 41 32 34 39 33 31 44 45 36 30 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 45 39 30 36 43 37 31 30 45 31 35 42 43 42 30 34 35 41 44 30 36 33 33 38 31 33 32 41 44 42 34 35 39 31 42 46 43 45 30 31 30 37 42 36 36 43 46 41 36 34 44 44 32 36 41 32 34 39 33 31 44 45 36 30 2e 68 73 74 72 } //00 00  \tox\E906C710E15BCB045AD06338132ADB4591BFCE0107B66CFA64DD26A24931DE60.hstr
	condition:
		any of ($a_*)
 
}