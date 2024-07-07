
rule Trojan_Win64_AbuseCommBack_BB{
	meta:
		description = "Trojan:Win64/AbuseCommBack.BB,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 37 00 31 00 46 00 45 00 38 00 32 00 46 00 31 00 42 00 37 00 36 00 43 00 41 00 46 00 44 00 39 00 41 00 37 00 35 00 45 00 37 00 31 00 42 00 34 00 32 00 43 00 42 00 41 00 34 00 36 00 38 00 32 00 34 00 44 00 42 00 46 00 30 00 46 00 31 00 46 00 33 00 35 00 30 00 36 00 41 00 42 00 46 00 38 00 45 00 45 00 30 00 43 00 42 00 37 00 42 00 46 00 34 00 30 00 46 00 37 00 33 00 44 00 34 00 41 00 3c 00 2f 00 70 00 3e 00 } //1 <p>71FE82F1B76CAFD9A75E71B42CBA46824DBF0F1F3506ABF8EE0CB7BF40F73D4A</p>
		$a_01_1 = {37 31 46 45 38 32 46 31 42 37 36 43 41 46 44 39 41 37 35 45 37 31 42 34 32 43 42 41 34 36 38 32 34 44 42 46 30 46 31 46 33 35 30 36 41 42 46 38 45 45 30 43 42 37 42 46 34 30 46 37 33 44 34 41 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 37 31 46 45 38 32 46 31 42 37 36 43 41 46 44 39 41 37 35 45 37 31 42 34 32 43 42 41 34 36 38 32 34 44 42 46 30 46 31 46 33 35 30 36 41 42 46 38 45 45 30 43 42 37 42 46 34 30 46 37 33 44 34 41 69 64 } //1 tableid71FE82F1B76CAFD9A75E71B42CBA46824DBF0F1F3506ABF8EE0CB7BF40F73D4Aid
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}