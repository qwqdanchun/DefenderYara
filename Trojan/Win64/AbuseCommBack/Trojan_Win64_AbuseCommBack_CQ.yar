
rule Trojan_Win64_AbuseCommBack_CQ{
	meta:
		description = "Trojan:Win64/AbuseCommBack.CQ,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 32 00 46 00 46 00 42 00 39 00 35 00 46 00 34 00 46 00 44 00 41 00 37 00 36 00 46 00 42 00 41 00 44 00 35 00 37 00 42 00 43 00 31 00 39 00 38 00 34 00 46 00 31 00 33 00 32 00 33 00 30 00 34 00 31 00 38 00 35 00 42 00 44 00 46 00 38 00 32 00 44 00 42 00 34 00 32 00 31 00 35 00 32 00 42 00 35 00 45 00 34 00 45 00 38 00 31 00 44 00 39 00 37 00 37 00 42 00 37 00 45 00 35 00 31 00 38 00 3c 00 2f 00 70 00 3e 00 } //1 <p>2FFB95F4FDA76FBAD57BC1984F132304185BDF82DB42152B5E4E81D977B7E518</p>
		$a_01_1 = {32 46 46 42 39 35 46 34 46 44 41 37 36 46 42 41 44 35 37 42 43 31 39 38 34 46 31 33 32 33 30 34 31 38 35 42 44 46 38 32 44 42 34 32 31 35 32 42 35 45 34 45 38 31 44 39 37 37 42 37 45 35 31 38 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 32 46 46 42 39 35 46 34 46 44 41 37 36 46 42 41 44 35 37 42 43 31 39 38 34 46 31 33 32 33 30 34 31 38 35 42 44 46 38 32 44 42 34 32 31 35 32 42 35 45 34 45 38 31 44 39 37 37 42 37 45 35 31 38 69 64 } //1 tableid2FFB95F4FDA76FBAD57BC1984F132304185BDF82DB42152B5E4E81D977B7E518id
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}