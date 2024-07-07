
rule Trojan_Win64_AbuseCommMain_DZ{
	meta:
		description = "Trojan:Win64/AbuseCommMain.DZ,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 42 00 37 00 41 00 34 00 39 00 43 00 41 00 37 00 46 00 46 00 34 00 41 00 35 00 44 00 46 00 45 00 32 00 33 00 44 00 44 00 34 00 33 00 37 00 41 00 39 00 43 00 38 00 31 00 43 00 34 00 33 00 30 00 38 00 33 00 31 00 41 00 45 00 30 00 46 00 45 00 39 00 39 00 42 00 33 00 38 00 39 00 45 00 36 00 41 00 32 00 39 00 39 00 31 00 42 00 43 00 33 00 38 00 39 00 31 00 35 00 42 00 32 00 37 00 32 00 } //1 tox:B7A49CA7FF4A5DFE23DD437A9C81C430831AE0FE99B389E6A2991BC38915B272
		$a_02_1 = {42 37 41 34 39 43 41 37 46 46 34 41 35 44 46 45 32 33 44 44 34 33 37 41 39 43 38 31 43 34 33 30 38 33 31 41 45 30 46 45 39 39 42 33 38 39 45 36 41 32 39 39 31 42 43 33 38 39 31 35 42 32 37 32 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //1
		$a_02_2 = {42 37 41 34 39 43 41 37 46 46 34 41 35 44 46 45 32 33 44 44 34 33 37 41 39 43 38 31 43 34 33 30 38 33 31 41 45 30 46 45 39 39 42 33 38 39 45 36 41 32 39 39 31 42 43 33 38 39 31 35 42 32 37 32 90 01 0c 4c 00 00 00 90 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 42 37 41 34 39 43 41 37 46 46 34 41 35 44 46 45 32 33 44 44 34 33 37 41 39 43 38 31 43 34 33 30 38 33 31 41 45 30 46 45 39 39 42 33 38 39 45 36 41 32 39 39 31 42 43 33 38 39 31 35 42 32 37 32 2e 68 73 74 72 } //1 \tox\B7A49CA7FF4A5DFE23DD437A9C81C430831AE0FE99B389E6A2991BC38915B272.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}