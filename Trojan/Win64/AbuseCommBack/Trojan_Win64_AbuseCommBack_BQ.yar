
rule Trojan_Win64_AbuseCommBack_BQ{
	meta:
		description = "Trojan:Win64/AbuseCommBack.BQ,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 39 00 30 00 39 00 36 00 41 00 44 00 37 00 30 00 36 00 32 00 41 00 34 00 32 00 33 00 32 00 46 00 35 00 41 00 41 00 33 00 31 00 43 00 32 00 46 00 37 00 43 00 34 00 44 00 46 00 30 00 41 00 43 00 31 00 45 00 41 00 44 00 31 00 30 00 42 00 37 00 38 00 44 00 34 00 30 00 41 00 36 00 41 00 33 00 33 00 32 00 38 00 41 00 44 00 31 00 34 00 32 00 41 00 34 00 32 00 42 00 35 00 35 00 35 00 45 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>9096AD7062A4232F5AA31C2F7C4DF0AC1EAD10B78D40A6A3328AD142A42B555E</p>
		$a_01_1 = {39 30 39 36 41 44 37 30 36 32 41 34 32 33 32 46 35 41 41 33 31 43 32 46 37 43 34 44 46 30 41 43 31 45 41 44 31 30 42 37 38 44 34 30 41 36 41 33 33 32 38 41 44 31 34 32 41 34 32 42 35 35 35 45 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 39 30 39 36 41 44 37 30 36 32 41 34 32 33 32 46 35 41 41 33 31 43 32 46 37 43 34 44 46 30 41 43 31 45 41 44 31 30 42 37 38 44 34 30 41 36 41 33 33 32 38 41 44 31 34 32 41 34 32 42 35 35 35 45 69 64 } //01 00  tableid9096AD7062A4232F5AA31C2F7C4DF0AC1EAD10B78D40A6A3328AD142A42B555Eid
	condition:
		any of ($a_*)
 
}