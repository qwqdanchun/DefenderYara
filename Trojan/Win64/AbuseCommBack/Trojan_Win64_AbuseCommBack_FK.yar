
rule Trojan_Win64_AbuseCommBack_FK{
	meta:
		description = "Trojan:Win64/AbuseCommBack.FK,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 33 00 43 00 35 00 38 00 38 00 44 00 33 00 36 00 45 00 46 00 36 00 37 00 36 00 32 00 30 00 31 00 37 00 30 00 31 00 42 00 30 00 42 00 38 00 45 00 41 00 31 00 46 00 38 00 30 00 34 00 36 00 45 00 30 00 42 00 32 00 33 00 37 00 32 00 45 00 42 00 43 00 46 00 39 00 30 00 30 00 30 00 30 00 38 00 45 00 38 00 30 00 42 00 30 00 44 00 45 00 30 00 32 00 46 00 33 00 39 00 44 00 44 00 32 00 35 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>3C588D36EF676201701B0B8EA1F8046E0B2372EBCF900008E80B0DE02F39DD25</p>
		$a_01_1 = {33 43 35 38 38 44 33 36 45 46 36 37 36 32 30 31 37 30 31 42 30 42 38 45 41 31 46 38 30 34 36 45 30 42 32 33 37 32 45 42 43 46 39 30 30 30 30 38 45 38 30 42 30 44 45 30 32 46 33 39 44 44 32 35 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 33 43 35 38 38 44 33 36 45 46 36 37 36 32 30 31 37 30 31 42 30 42 38 45 41 31 46 38 30 34 36 45 30 42 32 33 37 32 45 42 43 46 39 30 30 30 30 38 45 38 30 42 30 44 45 30 32 46 33 39 44 44 32 35 69 64 } //01 00  tableid3C588D36EF676201701B0B8EA1F8046E0B2372EBCF900008E80B0DE02F39DD25id
	condition:
		any of ($a_*)
 
}