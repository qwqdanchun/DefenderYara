
rule Trojan_Win64_AbuseCommMain_DW{
	meta:
		description = "Trojan:Win64/AbuseCommMain.DW,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 41 00 44 00 35 00 32 00 39 00 31 00 33 00 39 00 46 00 39 00 43 00 30 00 38 00 43 00 45 00 43 00 46 00 46 00 33 00 34 00 43 00 39 00 32 00 41 00 36 00 44 00 34 00 44 00 30 00 33 00 33 00 32 00 34 00 42 00 38 00 43 00 44 00 34 00 35 00 30 00 42 00 43 00 30 00 42 00 45 00 45 00 44 00 43 00 30 00 37 00 31 00 32 00 39 00 37 00 42 00 42 00 43 00 42 00 35 00 39 00 36 00 45 00 35 00 39 00 } //1 tox:AD529139F9C08CECFF34C92A6D4D03324B8CD450BC0BEEDC071297BBCB596E59
		$a_02_1 = {41 44 35 32 39 31 33 39 46 39 43 30 38 43 45 43 46 46 33 34 43 39 32 41 36 44 34 44 30 33 33 32 34 42 38 43 44 34 35 30 42 43 30 42 45 45 44 43 30 37 31 32 39 37 42 42 43 42 35 39 36 45 35 39 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4c 00 00 00 00 00 00 00 } //1
		$a_02_2 = {41 44 35 32 39 31 33 39 46 39 43 30 38 43 45 43 46 46 33 34 43 39 32 41 36 44 34 44 30 33 33 32 34 42 38 43 44 34 35 30 42 43 30 42 45 45 44 43 30 37 31 32 39 37 42 42 43 42 35 39 36 45 35 39 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4c 00 00 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 41 44 35 32 39 31 33 39 46 39 43 30 38 43 45 43 46 46 33 34 43 39 32 41 36 44 34 44 30 33 33 32 34 42 38 43 44 34 35 30 42 43 30 42 45 45 44 43 30 37 31 32 39 37 42 42 43 42 35 39 36 45 35 39 2e 68 73 74 72 } //1 \tox\AD529139F9C08CECFF34C92A6D4D03324B8CD450BC0BEEDC071297BBCB596E59.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}