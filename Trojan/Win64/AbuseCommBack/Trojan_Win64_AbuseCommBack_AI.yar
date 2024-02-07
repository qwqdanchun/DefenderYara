
rule Trojan_Win64_AbuseCommBack_AI{
	meta:
		description = "Trojan:Win64/AbuseCommBack.AI,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 43 00 31 00 42 00 44 00 43 00 36 00 39 00 34 00 39 00 35 00 31 00 30 00 46 00 37 00 38 00 37 00 39 00 46 00 30 00 37 00 38 00 32 00 41 00 33 00 32 00 38 00 36 00 33 00 39 00 32 00 42 00 46 00 43 00 43 00 31 00 32 00 34 00 45 00 33 00 33 00 39 00 33 00 42 00 44 00 36 00 36 00 35 00 39 00 32 00 44 00 38 00 34 00 45 00 45 00 46 00 31 00 33 00 35 00 34 00 32 00 31 00 44 00 34 00 37 00 3c 00 2f 00 70 00 3e 00 } //01 00  <p>C1BDC6949510F7879F0782A3286392BFCC124E3393BD66592D84EEF135421D47</p>
		$a_01_1 = {43 31 42 44 43 36 39 34 39 35 31 30 46 37 38 37 39 46 30 37 38 32 41 33 32 38 36 33 39 32 42 46 43 43 31 32 34 45 33 33 39 33 42 44 36 36 35 39 32 44 38 34 45 45 46 31 33 35 34 32 31 44 34 37 00 00 00 00 00 00 00 00 } //01 00 
		$a_01_2 = {74 61 62 6c 65 69 64 43 31 42 44 43 36 39 34 39 35 31 30 46 37 38 37 39 46 30 37 38 32 41 33 32 38 36 33 39 32 42 46 43 43 31 32 34 45 33 33 39 33 42 44 36 36 35 39 32 44 38 34 45 45 46 31 33 35 34 32 31 44 34 37 69 64 } //01 00  tableidC1BDC6949510F7879F0782A3286392BFCC124E3393BD66592D84EEF135421D47id
	condition:
		any of ($a_*)
 
}