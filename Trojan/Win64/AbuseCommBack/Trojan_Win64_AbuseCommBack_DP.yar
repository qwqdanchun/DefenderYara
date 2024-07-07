
rule Trojan_Win64_AbuseCommBack_DP{
	meta:
		description = "Trojan:Win64/AbuseCommBack.DP,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 31 00 32 00 36 00 32 00 38 00 45 00 38 00 30 00 32 00 42 00 30 00 43 00 30 00 36 00 33 00 45 00 33 00 33 00 41 00 41 00 42 00 34 00 39 00 42 00 46 00 35 00 33 00 41 00 34 00 31 00 37 00 35 00 35 00 43 00 46 00 30 00 30 00 34 00 32 00 32 00 37 00 32 00 33 00 42 00 30 00 43 00 31 00 32 00 32 00 46 00 31 00 31 00 30 00 38 00 41 00 32 00 42 00 38 00 34 00 33 00 36 00 46 00 35 00 34 00 3c 00 2f 00 70 00 3e 00 } //1 <p>12628E802B0C063E33AAB49BF53A41755CF00422723B0C122F1108A2B8436F54</p>
		$a_01_1 = {31 32 36 32 38 45 38 30 32 42 30 43 30 36 33 45 33 33 41 41 42 34 39 42 46 35 33 41 34 31 37 35 35 43 46 30 30 34 32 32 37 32 33 42 30 43 31 32 32 46 31 31 30 38 41 32 42 38 34 33 36 46 35 34 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 31 32 36 32 38 45 38 30 32 42 30 43 30 36 33 45 33 33 41 41 42 34 39 42 46 35 33 41 34 31 37 35 35 43 46 30 30 34 32 32 37 32 33 42 30 43 31 32 32 46 31 31 30 38 41 32 42 38 34 33 36 46 35 34 69 64 } //1 tableid12628E802B0C063E33AAB49BF53A41755CF00422723B0C122F1108A2B8436F54id
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}