
rule Trojan_Win64_AbuseCommMain_CJ{
	meta:
		description = "Trojan:Win64/AbuseCommMain.CJ,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 32 00 42 00 34 00 31 00 42 00 33 00 39 00 38 00 37 00 33 00 39 00 45 00 36 00 42 00 45 00 43 00 45 00 34 00 45 00 39 00 33 00 45 00 41 00 46 00 41 00 30 00 43 00 36 00 36 00 35 00 45 00 33 00 36 00 38 00 30 00 43 00 38 00 43 00 37 00 42 00 37 00 35 00 43 00 35 00 36 00 36 00 41 00 34 00 34 00 43 00 39 00 39 00 43 00 37 00 31 00 30 00 42 00 42 00 35 00 32 00 34 00 37 00 34 00 31 00 } //1 tox:2B41B398739E6BECE4E93EAFA0C665E3680C8C7B75C566A44C99C710BB524741
		$a_02_1 = {32 42 34 31 42 33 39 38 37 33 39 45 36 42 45 43 45 34 45 39 33 45 41 46 41 30 43 36 36 35 45 33 36 38 30 43 38 43 37 42 37 35 43 35 36 36 41 34 34 43 39 39 43 37 31 30 42 42 35 32 34 37 34 31 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //1
		$a_02_2 = {32 42 34 31 42 33 39 38 37 33 39 45 36 42 45 43 45 34 45 39 33 45 41 46 41 30 43 36 36 35 45 33 36 38 30 43 38 43 37 42 37 35 43 35 36 36 41 34 34 43 39 39 43 37 31 30 42 42 35 32 34 37 34 31 90 01 0c 4c 00 00 00 90 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 32 42 34 31 42 33 39 38 37 33 39 45 36 42 45 43 45 34 45 39 33 45 41 46 41 30 43 36 36 35 45 33 36 38 30 43 38 43 37 42 37 35 43 35 36 36 41 34 34 43 39 39 43 37 31 30 42 42 35 32 34 37 34 31 2e 68 73 74 72 } //1 \tox\2B41B398739E6BECE4E93EAFA0C665E3680C8C7B75C566A44C99C710BB524741.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}