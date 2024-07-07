
rule Trojan_Win64_AbuseCommMain_AM{
	meta:
		description = "Trojan:Win64/AbuseCommMain.AM,SIGNATURE_TYPE_PEHSTR,01 00 01 00 04 00 00 "
		
	strings :
		$a_01_0 = {74 00 6f 00 78 00 3a 00 41 00 42 00 33 00 33 00 42 00 43 00 35 00 31 00 41 00 46 00 41 00 43 00 36 00 34 00 44 00 39 00 38 00 32 00 32 00 36 00 38 00 32 00 36 00 45 00 37 00 30 00 42 00 34 00 38 00 33 00 35 00 39 00 33 00 43 00 38 00 31 00 43 00 42 00 32 00 32 00 45 00 36 00 41 00 33 00 42 00 35 00 30 00 34 00 46 00 37 00 41 00 37 00 35 00 33 00 34 00 38 00 43 00 33 00 38 00 43 00 38 00 36 00 32 00 46 00 } //1 tox:AB33BC51AFAC64D98226826E70B483593C81CB22E6A3B504F7A75348C38C862F
		$a_01_1 = {41 42 33 33 42 43 35 31 41 46 41 43 36 34 44 39 38 32 32 36 38 32 36 45 37 30 42 34 38 33 35 39 33 43 38 31 43 42 32 32 45 36 41 33 42 35 30 34 46 37 41 37 35 33 34 38 43 33 38 43 38 36 32 46 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 } //1
		$a_01_2 = {41 42 33 33 42 43 35 31 41 46 41 43 36 34 44 39 38 32 32 36 38 32 36 45 37 30 42 34 38 33 35 39 33 43 38 31 43 42 32 32 45 36 41 33 42 35 30 34 46 37 41 37 35 33 34 38 43 33 38 43 38 36 32 46 90 01 0c 4c 00 00 00 } //1
		$a_01_3 = {5c 74 6f 78 5c 41 42 33 33 42 43 35 31 41 46 41 43 36 34 44 39 38 32 32 36 38 32 36 45 37 30 42 34 38 33 35 39 33 43 38 31 43 42 32 32 45 36 41 33 42 35 30 34 46 37 41 37 35 33 34 38 43 33 38 43 38 36 32 46 2e 68 73 74 72 } //1 \tox\AB33BC51AFAC64D98226826E70B483593C81CB22E6A3B504F7A75348C38C862F.hstr
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=1
 
}