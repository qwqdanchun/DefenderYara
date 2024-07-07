
rule Trojan_Win64_Dridex_MT_MTB{
	meta:
		description = "Trojan:Win64/Dridex.MT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_02_0 = {48 8b 04 24 48 8b 4c 24 90 01 01 66 8b 54 24 90 01 01 66 0f af d2 48 81 c1 90 01 04 66 89 54 24 90 01 01 4c 8b 44 24 90 01 01 45 8a 0c 00 4c 8b 54 24 90 01 01 45 88 0c 02 c7 44 24 90 01 05 48 01 c8 48 8b 4c 24 90 01 01 48 39 c8 48 89 04 24 74 90 01 01 eb 90 00 } //1
		$a_02_1 = {48 8b 44 24 90 01 01 48 35 90 01 04 66 8b 4c 24 90 01 01 66 69 d1 90 01 02 66 89 54 24 90 01 01 44 8a 44 24 90 01 01 4c 8b 4c 24 90 01 01 45 88 01 48 03 44 24 90 01 01 c6 44 24 5b 90 01 01 48 89 44 24 90 01 01 44 8a 44 24 90 01 01 41 80 f0 90 01 01 44 88 44 24 90 01 01 4c 8b 4c 24 90 01 01 4c 39 c8 0f 85 90 00 } //1
		$a_02_2 = {48 8b 04 24 8b 4c 24 90 01 01 48 8b 54 24 90 01 01 89 4c 24 90 01 01 4c 8b 44 24 90 01 01 45 8a 0c 00 48 81 f2 90 01 04 4c 8b 54 24 90 01 01 45 88 0c 02 48 01 d0 48 8b 54 24 90 01 01 48 39 d0 48 89 04 24 75 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=1
 
}