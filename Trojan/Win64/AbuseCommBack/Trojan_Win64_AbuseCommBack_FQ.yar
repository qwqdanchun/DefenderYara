
rule Trojan_Win64_AbuseCommBack_FQ{
	meta:
		description = "Trojan:Win64/AbuseCommBack.FQ,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 32 00 44 00 31 00 36 00 34 00 42 00 45 00 42 00 30 00 39 00 44 00 46 00 37 00 37 00 35 00 43 00 35 00 34 00 33 00 46 00 35 00 32 00 43 00 37 00 41 00 44 00 38 00 37 00 35 00 35 00 42 00 39 00 36 00 46 00 42 00 42 00 33 00 41 00 31 00 39 00 43 00 38 00 41 00 45 00 41 00 42 00 30 00 43 00 39 00 33 00 45 00 46 00 43 00 45 00 33 00 43 00 37 00 34 00 45 00 34 00 41 00 37 00 30 00 33 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>2D164BEB09DF775C543F52C7AD8755B96FBB3A19C8AEAB0C93EFCE3C74E4A703</p>
		$a_01_1 = {32 44 31 36 34 42 45 42 30 39 44 46 37 37 35 43 35 34 33 46 35 32 43 37 41 44 38 37 35 35 42 39 36 46 42 42 33 41 31 39 43 38 41 45 41 42 30 43 39 33 45 46 43 45 33 43 37 34 45 34 41 37 30 33 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 32 44 31 36 34 42 45 42 30 39 44 46 37 37 35 43 35 34 33 46 35 32 43 37 41 44 38 37 35 35 42 39 36 46 42 42 33 41 31 39 43 38 41 45 41 42 30 43 39 33 45 46 43 45 33 43 37 34 45 34 41 37 30 33 69 64 } //01 00  tableid2D164BEB09DF775C543F52C7AD8755B96FBB3A19C8AEAB0C93EFCE3C74E4A703id
	condition:
		any of ($a_*)
 
}