
rule Trojan_Win64_AbuseCommMain_R{
	meta:
		description = "Trojan:Win64/AbuseCommMain.R,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 34 00 46 00 31 00 35 00 32 00 33 00 36 00 38 00 46 00 42 00 38 00 39 00 46 00 41 00 38 00 34 00 45 00 32 00 39 00 32 00 44 00 33 00 30 00 43 00 30 00 30 00 37 00 30 00 34 00 36 00 35 00 31 00 31 00 46 00 45 00 31 00 32 00 46 00 45 00 33 00 35 00 44 00 34 00 43 00 30 00 41 00 45 00 41 00 37 00 34 00 41 00 31 00 35 00 46 00 42 00 30 00 45 00 35 00 41 00 39 00 30 00 38 00 34 00 38 00 } //1 tox:4F152368FB89FA84E292D30C007046511FE12FE35D4C0AEA74A15FB0E5A90848
		$a_02_1 = {34 46 31 35 32 33 36 38 46 42 38 39 46 41 38 34 45 32 39 32 44 33 30 43 30 30 37 30 34 36 35 31 31 46 45 31 32 46 45 33 35 44 34 43 30 41 45 41 37 34 41 31 35 46 42 30 45 35 41 39 30 38 34 38 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //1
		$a_02_2 = {34 46 31 35 32 33 36 38 46 42 38 39 46 41 38 34 45 32 39 32 44 33 30 43 30 30 37 30 34 36 35 31 31 46 45 31 32 46 45 33 35 44 34 43 30 41 45 41 37 34 41 31 35 46 42 30 45 35 41 39 30 38 34 38 90 01 0c 4c 00 00 00 90 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 34 46 31 35 32 33 36 38 46 42 38 39 46 41 38 34 45 32 39 32 44 33 30 43 30 30 37 30 34 36 35 31 31 46 45 31 32 46 45 33 35 44 34 43 30 41 45 41 37 34 41 31 35 46 42 30 45 35 41 39 30 38 34 38 2e 68 73 74 72 } //1 \tox\4F152368FB89FA84E292D30C007046511FE12FE35D4C0AEA74A15FB0E5A90848.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}