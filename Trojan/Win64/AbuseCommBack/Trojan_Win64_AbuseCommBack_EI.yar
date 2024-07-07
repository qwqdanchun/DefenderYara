
rule Trojan_Win64_AbuseCommBack_EI{
	meta:
		description = "Trojan:Win64/AbuseCommBack.EI,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 35 00 39 00 30 00 35 00 32 00 44 00 45 00 38 00 32 00 38 00 38 00 46 00 45 00 30 00 35 00 34 00 35 00 37 00 36 00 46 00 42 00 32 00 44 00 38 00 41 00 44 00 45 00 32 00 37 00 45 00 33 00 35 00 41 00 44 00 39 00 32 00 36 00 39 00 46 00 35 00 41 00 42 00 34 00 42 00 45 00 44 00 39 00 39 00 42 00 44 00 43 00 30 00 31 00 39 00 42 00 38 00 31 00 44 00 34 00 30 00 42 00 39 00 37 00 43 00 3c 00 2f 00 70 00 3e 00 } //1 <p>59052DE8288FE054576FB2D8ADE27E35AD9269F5AB4BED99BDC019B81D40B97C</p>
		$a_01_1 = {35 39 30 35 32 44 45 38 32 38 38 46 45 30 35 34 35 37 36 46 42 32 44 38 41 44 45 32 37 45 33 35 41 44 39 32 36 39 46 35 41 42 34 42 45 44 39 39 42 44 43 30 31 39 42 38 31 44 34 30 42 39 37 43 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 35 39 30 35 32 44 45 38 32 38 38 46 45 30 35 34 35 37 36 46 42 32 44 38 41 44 45 32 37 45 33 35 41 44 39 32 36 39 46 35 41 42 34 42 45 44 39 39 42 44 43 30 31 39 42 38 31 44 34 30 42 39 37 43 69 64 } //1 tableid59052DE8288FE054576FB2D8ADE27E35AD9269F5AB4BED99BDC019B81D40B97Cid
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}