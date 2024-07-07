
rule Trojan_Win64_AbuseCommBack_AK{
	meta:
		description = "Trojan:Win64/AbuseCommBack.AK,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 30 00 41 00 30 00 37 00 41 00 36 00 32 00 41 00 33 00 43 00 37 00 39 00 38 00 45 00 44 00 30 00 41 00 35 00 32 00 32 00 35 00 45 00 32 00 46 00 35 00 36 00 45 00 41 00 36 00 45 00 45 00 45 00 43 00 45 00 35 00 42 00 39 00 37 00 42 00 42 00 44 00 38 00 36 00 45 00 41 00 37 00 41 00 36 00 38 00 41 00 38 00 46 00 36 00 41 00 34 00 33 00 46 00 42 00 35 00 43 00 39 00 35 00 30 00 32 00 3c 00 2f 00 70 00 3e 00 } //1 <p>0A07A62A3C798ED0A5225E2F56EA6EEECE5B97BBD86EA7A68A8F6A43FB5C9502</p>
		$a_01_1 = {30 41 30 37 41 36 32 41 33 43 37 39 38 45 44 30 41 35 32 32 35 45 32 46 35 36 45 41 36 45 45 45 43 45 35 42 39 37 42 42 44 38 36 45 41 37 41 36 38 41 38 46 36 41 34 33 46 42 35 43 39 35 30 32 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 30 41 30 37 41 36 32 41 33 43 37 39 38 45 44 30 41 35 32 32 35 45 32 46 35 36 45 41 36 45 45 45 43 45 35 42 39 37 42 42 44 38 36 45 41 37 41 36 38 41 38 46 36 41 34 33 46 42 35 43 39 35 30 32 69 64 } //1 tableid0A07A62A3C798ED0A5225E2F56EA6EEECE5B97BBD86EA7A68A8F6A43FB5C9502id
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}