
rule Trojan_Win64_AbuseCommMain_DF{
	meta:
		description = "Trojan:Win64/AbuseCommMain.DF,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 38 00 46 00 38 00 30 00 34 00 44 00 36 00 36 00 34 00 34 00 31 00 44 00 46 00 34 00 41 00 32 00 31 00 30 00 43 00 46 00 34 00 33 00 43 00 31 00 42 00 39 00 43 00 30 00 37 00 34 00 38 00 32 00 33 00 43 00 37 00 41 00 38 00 44 00 31 00 41 00 45 00 33 00 41 00 43 00 46 00 33 00 32 00 31 00 35 00 46 00 37 00 45 00 43 00 33 00 30 00 33 00 37 00 31 00 37 00 41 00 30 00 45 00 34 00 32 00 } //01 00  tox:8F804D66441DF4A210CF43C1B9C074823C7A8D1AE3ACF3215F7EC303717A0E42
		$a_02_1 = {38 46 38 30 34 44 36 36 34 34 31 44 46 34 41 32 31 30 43 46 34 33 43 31 42 39 43 30 37 34 38 32 33 43 37 41 38 44 31 41 45 33 41 43 46 33 32 31 35 46 37 45 43 33 30 33 37 31 37 41 30 45 34 32 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {38 46 38 30 34 44 36 36 34 34 31 44 46 34 41 32 31 30 43 46 34 33 43 31 42 39 43 30 37 34 38 32 33 43 37 41 38 44 31 41 45 33 41 43 46 33 32 31 35 46 37 45 43 33 30 33 37 31 37 41 30 45 34 32 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 38 46 38 30 34 44 36 36 34 34 31 44 46 34 41 32 31 30 43 46 34 33 43 31 42 39 43 30 37 34 38 32 33 43 37 41 38 44 31 41 45 33 41 43 46 33 32 31 35 46 37 45 43 33 30 33 37 31 37 41 30 45 34 32 2e 68 73 74 72 } //00 00  \tox\8F804D66441DF4A210CF43C1B9C074823C7A8D1AE3ACF3215F7EC303717A0E42.hstr
	condition:
		any of ($a_*)
 
}