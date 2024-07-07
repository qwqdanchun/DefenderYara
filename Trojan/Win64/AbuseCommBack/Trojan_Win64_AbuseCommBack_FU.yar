
rule Trojan_Win64_AbuseCommBack_FU{
	meta:
		description = "Trojan:Win64/AbuseCommBack.FU,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 46 00 36 00 42 00 32 00 45 00 30 00 31 00 43 00 46 00 41 00 34 00 44 00 33 00 46 00 32 00 44 00 42 00 37 00 35 00 45 00 34 00 45 00 44 00 44 00 30 00 37 00 45 00 43 00 32 00 38 00 42 00 46 00 37 00 39 00 33 00 45 00 35 00 34 00 31 00 41 00 39 00 36 00 37 00 34 00 43 00 33 00 45 00 36 00 41 00 36 00 36 00 45 00 31 00 43 00 44 00 41 00 39 00 44 00 39 00 33 00 31 00 41 00 31 00 33 00 3c 00 2f 00 70 00 3e 00 } //1 <p>F6B2E01CFA4D3F2DB75E4EDD07EC28BF793E541A9674C3E6A66E1CDA9D931A13</p>
		$a_01_1 = {46 36 42 32 45 30 31 43 46 41 34 44 33 46 32 44 42 37 35 45 34 45 44 44 30 37 45 43 32 38 42 46 37 39 33 45 35 34 31 41 39 36 37 34 43 33 45 36 41 36 36 45 31 43 44 41 39 44 39 33 31 41 31 33 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 46 36 42 32 45 30 31 43 46 41 34 44 33 46 32 44 42 37 35 45 34 45 44 44 30 37 45 43 32 38 42 46 37 39 33 45 35 34 31 41 39 36 37 34 43 33 45 36 41 36 36 45 31 43 44 41 39 44 39 33 31 41 31 33 69 64 } //1 tableidF6B2E01CFA4D3F2DB75E4EDD07EC28BF793E541A9674C3E6A66E1CDA9D931A13id
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}