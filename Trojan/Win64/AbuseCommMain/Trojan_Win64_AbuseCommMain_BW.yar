
rule Trojan_Win64_AbuseCommMain_BW{
	meta:
		description = "Trojan:Win64/AbuseCommMain.BW,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 30 00 41 00 36 00 46 00 39 00 39 00 32 00 45 00 31 00 33 00 37 00 32 00 44 00 42 00 34 00 46 00 32 00 34 00 35 00 35 00 39 00 35 00 34 00 32 00 34 00 41 00 37 00 34 00 33 00 36 00 45 00 42 00 42 00 36 00 31 00 30 00 37 00 37 00 35 00 44 00 36 00 41 00 44 00 44 00 43 00 34 00 44 00 35 00 36 00 38 00 41 00 43 00 43 00 32 00 41 00 46 00 35 00 44 00 33 00 31 00 35 00 32 00 32 00 31 00 } //1 tox:0A6F992E1372DB4F245595424A7436EBB610775D6ADDC4D568ACC2AF5D315221
		$a_02_1 = {30 41 36 46 39 39 32 45 31 33 37 32 44 42 34 46 32 34 35 35 39 35 34 32 34 41 37 34 33 36 45 42 42 36 31 30 37 37 35 44 36 41 44 44 43 34 44 35 36 38 41 43 43 32 41 46 35 44 33 31 35 32 32 31 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //1
		$a_02_2 = {30 41 36 46 39 39 32 45 31 33 37 32 44 42 34 46 32 34 35 35 39 35 34 32 34 41 37 34 33 36 45 42 42 36 31 30 37 37 35 44 36 41 44 44 43 34 44 35 36 38 41 43 43 32 41 46 35 44 33 31 35 32 32 31 90 01 0c 4c 00 00 00 90 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 30 41 36 46 39 39 32 45 31 33 37 32 44 42 34 46 32 34 35 35 39 35 34 32 34 41 37 34 33 36 45 42 42 36 31 30 37 37 35 44 36 41 44 44 43 34 44 35 36 38 41 43 43 32 41 46 35 44 33 31 35 32 32 31 2e 68 73 74 72 } //1 \tox\0A6F992E1372DB4F245595424A7436EBB610775D6ADDC4D568ACC2AF5D315221.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}