
rule Trojan_Win64_AbuseCommMain_Z{
	meta:
		description = "Trojan:Win64/AbuseCommMain.Z,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 43 00 31 00 33 00 35 00 46 00 35 00 32 00 34 00 45 00 34 00 43 00 37 00 35 00 46 00 41 00 30 00 30 00 42 00 35 00 36 00 32 00 30 00 46 00 34 00 32 00 38 00 36 00 46 00 46 00 45 00 37 00 39 00 30 00 36 00 45 00 34 00 35 00 39 00 36 00 37 00 33 00 41 00 36 00 34 00 38 00 30 00 30 00 45 00 46 00 32 00 30 00 44 00 39 00 34 00 34 00 38 00 36 00 33 00 39 00 34 00 36 00 45 00 31 00 46 00 } //1 tox:C135F524E4C75FA00B5620F4286FFE7906E459673A64800EF20D944863946E1F
		$a_02_1 = {43 31 33 35 46 35 32 34 45 34 43 37 35 46 41 30 30 42 35 36 32 30 46 34 32 38 36 46 46 45 37 39 30 36 45 34 35 39 36 37 33 41 36 34 38 30 30 45 46 32 30 44 39 34 34 38 36 33 39 34 36 45 31 46 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4c 00 00 00 00 00 00 00 } //1
		$a_02_2 = {43 31 33 35 46 35 32 34 45 34 43 37 35 46 41 30 30 42 35 36 32 30 46 34 32 38 36 46 46 45 37 39 30 36 45 34 35 39 36 37 33 41 36 34 38 30 30 45 46 32 30 44 39 34 34 38 36 33 39 34 36 45 31 46 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4c 00 00 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 43 31 33 35 46 35 32 34 45 34 43 37 35 46 41 30 30 42 35 36 32 30 46 34 32 38 36 46 46 45 37 39 30 36 45 34 35 39 36 37 33 41 36 34 38 30 30 45 46 32 30 44 39 34 34 38 36 33 39 34 36 45 31 46 2e 68 73 74 72 } //1 \tox\C135F524E4C75FA00B5620F4286FFE7906E459673A64800EF20D944863946E1F.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}