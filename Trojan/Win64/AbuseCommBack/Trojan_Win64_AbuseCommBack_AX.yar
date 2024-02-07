
rule Trojan_Win64_AbuseCommBack_AX{
	meta:
		description = "Trojan:Win64/AbuseCommBack.AX,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 37 00 33 00 36 00 37 00 42 00 34 00 32 00 32 00 43 00 44 00 37 00 34 00 39 00 38 00 44 00 35 00 46 00 32 00 41 00 41 00 46 00 33 00 33 00 46 00 35 00 38 00 46 00 36 00 37 00 41 00 33 00 33 00 32 00 46 00 38 00 35 00 32 00 30 00 43 00 46 00 30 00 32 00 37 00 39 00 41 00 35 00 46 00 42 00 42 00 34 00 36 00 31 00 31 00 45 00 30 00 31 00 32 00 31 00 41 00 45 00 34 00 32 00 31 00 41 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>7367B422CD7498D5F2AAF33F58F67A332F8520CF0279A5FBB4611E0121AE421A</p>
		$a_01_1 = {37 33 36 37 42 34 32 32 43 44 37 34 39 38 44 35 46 32 41 41 46 33 33 46 35 38 46 36 37 41 33 33 32 46 38 35 32 30 43 46 30 32 37 39 41 35 46 42 42 34 36 31 31 45 30 31 32 31 41 45 34 32 31 41 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 37 33 36 37 42 34 32 32 43 44 37 34 39 38 44 35 46 32 41 41 46 33 33 46 35 38 46 36 37 41 33 33 32 46 38 35 32 30 43 46 30 32 37 39 41 35 46 42 42 34 36 31 31 45 30 31 32 31 41 45 34 32 31 41 69 64 } //01 00  tableid7367B422CD7498D5F2AAF33F58F67A332F8520CF0279A5FBB4611E0121AE421Aid
	condition:
		any of ($a_*)
 
}