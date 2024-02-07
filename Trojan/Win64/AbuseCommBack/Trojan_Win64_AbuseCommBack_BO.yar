
rule Trojan_Win64_AbuseCommBack_BO{
	meta:
		description = "Trojan:Win64/AbuseCommBack.BO,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 37 00 38 00 45 00 32 00 31 00 43 00 46 00 46 00 37 00 41 00 41 00 38 00 35 00 46 00 37 00 31 00 33 00 43 00 31 00 35 00 33 00 30 00 41 00 45 00 46 00 32 00 45 00 37 00 34 00 45 00 36 00 32 00 38 00 33 00 30 00 42 00 45 00 45 00 37 00 37 00 32 00 33 00 38 00 46 00 34 00 42 00 30 00 41 00 37 00 33 00 45 00 35 00 45 00 33 00 32 00 35 00 31 00 45 00 41 00 44 00 35 00 36 00 34 00 32 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>78E21CFF7AA85F713C1530AEF2E74E62830BEE77238F4B0A73E5E3251EAD5642</p>
		$a_01_1 = {37 38 45 32 31 43 46 46 37 41 41 38 35 46 37 31 33 43 31 35 33 30 41 45 46 32 45 37 34 45 36 32 38 33 30 42 45 45 37 37 32 33 38 46 34 42 30 41 37 33 45 35 45 33 32 35 31 45 41 44 35 36 34 32 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 37 38 45 32 31 43 46 46 37 41 41 38 35 46 37 31 33 43 31 35 33 30 41 45 46 32 45 37 34 45 36 32 38 33 30 42 45 45 37 37 32 33 38 46 34 42 30 41 37 33 45 35 45 33 32 35 31 45 41 44 35 36 34 32 69 64 } //01 00  tableid78E21CFF7AA85F713C1530AEF2E74E62830BEE77238F4B0A73E5E3251EAD5642id
	condition:
		any of ($a_*)
 
}