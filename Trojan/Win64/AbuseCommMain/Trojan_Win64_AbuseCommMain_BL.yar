
rule Trojan_Win64_AbuseCommMain_BL{
	meta:
		description = "Trojan:Win64/AbuseCommMain.BL,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 42 00 43 00 39 00 31 00 33 00 32 00 46 00 41 00 45 00 33 00 38 00 36 00 43 00 44 00 31 00 30 00 37 00 39 00 30 00 41 00 42 00 32 00 31 00 34 00 30 00 30 00 43 00 46 00 32 00 34 00 38 00 44 00 35 00 36 00 44 00 46 00 45 00 43 00 32 00 39 00 45 00 35 00 34 00 30 00 33 00 43 00 31 00 34 00 34 00 41 00 43 00 43 00 41 00 38 00 44 00 34 00 32 00 36 00 44 00 36 00 38 00 42 00 33 00 33 00 } //1 tox:BC9132FAE386CD10790AB21400CF248D56DFEC29E5403C144ACCA8D426D68B33
		$a_02_1 = {42 43 39 31 33 32 46 41 45 33 38 36 43 44 31 30 37 39 30 41 42 32 31 34 30 30 43 46 32 34 38 44 35 36 44 46 45 43 32 39 45 35 34 30 33 43 31 34 34 41 43 43 41 38 44 34 32 36 44 36 38 42 33 33 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4c 00 00 00 00 00 00 00 } //1
		$a_02_2 = {42 43 39 31 33 32 46 41 45 33 38 36 43 44 31 30 37 39 30 41 42 32 31 34 30 30 43 46 32 34 38 44 35 36 44 46 45 43 32 39 45 35 34 30 33 43 31 34 34 41 43 43 41 38 44 34 32 36 44 36 38 42 33 33 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4c 00 00 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 42 43 39 31 33 32 46 41 45 33 38 36 43 44 31 30 37 39 30 41 42 32 31 34 30 30 43 46 32 34 38 44 35 36 44 46 45 43 32 39 45 35 34 30 33 43 31 34 34 41 43 43 41 38 44 34 32 36 44 36 38 42 33 33 2e 68 73 74 72 } //1 \tox\BC9132FAE386CD10790AB21400CF248D56DFEC29E5403C144ACCA8D426D68B33.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}