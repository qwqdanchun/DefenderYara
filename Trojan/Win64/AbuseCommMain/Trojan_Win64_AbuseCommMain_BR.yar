
rule Trojan_Win64_AbuseCommMain_BR{
	meta:
		description = "Trojan:Win64/AbuseCommMain.BR,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 34 00 41 00 45 00 32 00 34 00 35 00 35 00 34 00 38 00 46 00 32 00 41 00 32 00 32 00 35 00 38 00 38 00 32 00 39 00 35 00 31 00 46 00 42 00 31 00 34 00 45 00 39 00 42 00 46 00 38 00 37 00 45 00 45 00 30 00 31 00 41 00 30 00 43 00 31 00 30 00 41 00 45 00 31 00 35 00 39 00 42 00 39 00 39 00 44 00 31 00 45 00 41 00 36 00 32 00 36 00 32 00 30 00 44 00 39 00 31 00 41 00 33 00 37 00 32 00 } //1 tox:4AE245548F2A225882951FB14E9BF87EE01A0C10AE159B99D1EA62620D91A372
		$a_02_1 = {34 41 45 32 34 35 35 34 38 46 32 41 32 32 35 38 38 32 39 35 31 46 42 31 34 45 39 42 46 38 37 45 45 30 31 41 30 43 31 30 41 45 31 35 39 42 39 39 44 31 45 41 36 32 36 32 30 44 39 31 41 33 37 32 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 00 00 00 00 4c 00 00 00 00 00 00 00 } //1
		$a_02_2 = {34 41 45 32 34 35 35 34 38 46 32 41 32 32 35 38 38 32 39 35 31 46 42 31 34 45 39 42 46 38 37 45 45 30 31 41 30 43 31 30 41 45 31 35 39 42 39 39 44 31 45 41 36 32 36 32 30 44 39 31 41 33 37 32 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 4c 00 00 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 34 41 45 32 34 35 35 34 38 46 32 41 32 32 35 38 38 32 39 35 31 46 42 31 34 45 39 42 46 38 37 45 45 30 31 41 30 43 31 30 41 45 31 35 39 42 39 39 44 31 45 41 36 32 36 32 30 44 39 31 41 33 37 32 2e 68 73 74 72 } //1 \tox\4AE245548F2A225882951FB14E9BF87EE01A0C10AE159B99D1EA62620D91A372.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}