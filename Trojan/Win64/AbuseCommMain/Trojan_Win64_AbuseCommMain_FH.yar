
rule Trojan_Win64_AbuseCommMain_FH{
	meta:
		description = "Trojan:Win64/AbuseCommMain.FH,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 39 00 37 00 39 00 36 00 43 00 45 00 31 00 45 00 37 00 32 00 41 00 38 00 38 00 37 00 34 00 44 00 35 00 39 00 34 00 46 00 36 00 35 00 37 00 33 00 46 00 34 00 34 00 43 00 39 00 34 00 46 00 42 00 36 00 34 00 39 00 34 00 37 00 33 00 42 00 34 00 31 00 39 00 34 00 44 00 43 00 44 00 38 00 30 00 43 00 34 00 30 00 36 00 42 00 46 00 45 00 38 00 38 00 45 00 34 00 42 00 33 00 36 00 36 00 32 00 } //01 00  tox:9796CE1E72A8874D594F6573F44C94FB649473B4194DCD80C406BFE88E4B3662
		$a_02_1 = {39 37 39 36 43 45 31 45 37 32 41 38 38 37 34 44 35 39 34 46 36 35 37 33 46 34 34 43 39 34 46 42 36 34 39 34 37 33 42 34 31 39 34 44 43 44 38 30 43 34 30 36 42 46 45 38 38 45 34 42 33 36 36 32 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {39 37 39 36 43 45 31 45 37 32 41 38 38 37 34 44 35 39 34 46 36 35 37 33 46 34 34 43 39 34 46 42 36 34 39 34 37 33 42 34 31 39 34 44 43 44 38 30 43 34 30 36 42 46 45 38 38 45 34 42 33 36 36 32 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 39 37 39 36 43 45 31 45 37 32 41 38 38 37 34 44 35 39 34 46 36 35 37 33 46 34 34 43 39 34 46 42 36 34 39 34 37 33 42 34 31 39 34 44 43 44 38 30 43 34 30 36 42 46 45 38 38 45 34 42 33 36 36 32 2e 68 73 74 72 } //00 00  \tox\9796CE1E72A8874D594F6573F44C94FB649473B4194DCD80C406BFE88E4B3662.hstr
	condition:
		any of ($a_*)
 
}