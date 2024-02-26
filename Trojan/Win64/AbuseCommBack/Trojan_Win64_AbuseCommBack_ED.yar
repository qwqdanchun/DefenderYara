
rule Trojan_Win64_AbuseCommBack_ED{
	meta:
		description = "Trojan:Win64/AbuseCommBack.ED,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 37 00 44 00 46 00 46 00 41 00 34 00 32 00 31 00 43 00 46 00 31 00 38 00 46 00 37 00 37 00 46 00 33 00 42 00 42 00 39 00 37 00 34 00 41 00 32 00 37 00 36 00 34 00 36 00 44 00 45 00 39 00 44 00 44 00 39 00 38 00 35 00 43 00 31 00 39 00 34 00 33 00 35 00 38 00 34 00 42 00 34 00 38 00 34 00 33 00 33 00 42 00 45 00 42 00 34 00 41 00 39 00 36 00 46 00 31 00 31 00 38 00 36 00 32 00 31 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>7DFFA421CF18F77F3BB974A27646DE9DD985C1943584B48433BEB4A96F118621</p>
		$a_01_1 = {37 44 46 46 41 34 32 31 43 46 31 38 46 37 37 46 33 42 42 39 37 34 41 32 37 36 34 36 44 45 39 44 44 39 38 35 43 31 39 34 33 35 38 34 42 34 38 34 33 33 42 45 42 34 41 39 36 46 31 31 38 36 32 31 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 37 44 46 46 41 34 32 31 43 46 31 38 46 37 37 46 33 42 42 39 37 34 41 32 37 36 34 36 44 45 39 44 44 39 38 35 43 31 39 34 33 35 38 34 42 34 38 34 33 33 42 45 42 34 41 39 36 46 31 31 38 36 32 31 69 64 } //01 00  tableid7DFFA421CF18F77F3BB974A27646DE9DD985C1943584B48433BEB4A96F118621id
	condition:
		any of ($a_*)
 
}