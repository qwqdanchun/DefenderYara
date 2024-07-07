
rule Trojan_Win64_AbuseCommMain_Y{
	meta:
		description = "Trojan:Win64/AbuseCommMain.Y,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 45 00 34 00 37 00 36 00 39 00 42 00 31 00 44 00 45 00 46 00 36 00 31 00 36 00 37 00 43 00 36 00 35 00 37 00 39 00 39 00 45 00 37 00 46 00 41 00 37 00 32 00 34 00 30 00 30 00 34 00 45 00 39 00 37 00 46 00 36 00 41 00 43 00 35 00 46 00 37 00 43 00 36 00 35 00 46 00 39 00 44 00 46 00 46 00 30 00 35 00 46 00 36 00 36 00 37 00 34 00 43 00 35 00 42 00 41 00 41 00 33 00 45 00 34 00 32 00 } //1 tox:E4769B1DEF6167C65799E7FA724004E97F6AC5F7C65F9DFF05F6674C5BAA3E42
		$a_02_1 = {45 34 37 36 39 42 31 44 45 46 36 31 36 37 43 36 35 37 39 39 45 37 46 41 37 32 34 30 30 34 45 39 37 46 36 41 43 35 46 37 43 36 35 46 39 44 46 46 30 35 46 36 36 37 34 43 35 42 41 41 33 45 34 32 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //1
		$a_02_2 = {45 34 37 36 39 42 31 44 45 46 36 31 36 37 43 36 35 37 39 39 45 37 46 41 37 32 34 30 30 34 45 39 37 46 36 41 43 35 46 37 43 36 35 46 39 44 46 46 30 35 46 36 36 37 34 43 35 42 41 41 33 45 34 32 90 01 0c 4c 00 00 00 90 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 45 34 37 36 39 42 31 44 45 46 36 31 36 37 43 36 35 37 39 39 45 37 46 41 37 32 34 30 30 34 45 39 37 46 36 41 43 35 46 37 43 36 35 46 39 44 46 46 30 35 46 36 36 37 34 43 35 42 41 41 33 45 34 32 2e 68 73 74 72 } //1 \tox\E4769B1DEF6167C65799E7FA724004E97F6AC5F7C65F9DFF05F6674C5BAA3E42.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}