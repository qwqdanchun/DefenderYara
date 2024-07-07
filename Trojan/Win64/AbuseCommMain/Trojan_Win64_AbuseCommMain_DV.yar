
rule Trojan_Win64_AbuseCommMain_DV{
	meta:
		description = "Trojan:Win64/AbuseCommMain.DV,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 45 00 32 00 34 00 46 00 30 00 32 00 34 00 41 00 37 00 33 00 39 00 42 00 46 00 34 00 43 00 43 00 31 00 41 00 34 00 30 00 46 00 44 00 39 00 37 00 30 00 41 00 31 00 31 00 31 00 35 00 34 00 44 00 32 00 33 00 31 00 46 00 42 00 35 00 44 00 46 00 30 00 44 00 34 00 30 00 31 00 43 00 31 00 37 00 45 00 34 00 43 00 32 00 34 00 33 00 39 00 41 00 41 00 37 00 39 00 30 00 33 00 34 00 36 00 33 00 } //1 tox:E24F024A739BF4CC1A40FD970A11154D231FB5DF0D401C17E4C2439AA7903463
		$a_02_1 = {45 32 34 46 30 32 34 41 37 33 39 42 46 34 43 43 31 41 34 30 46 44 39 37 30 41 31 31 31 35 34 44 32 33 31 46 42 35 44 46 30 44 34 30 31 43 31 37 45 34 43 32 34 33 39 41 41 37 39 30 33 34 36 33 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //1
		$a_02_2 = {45 32 34 46 30 32 34 41 37 33 39 42 46 34 43 43 31 41 34 30 46 44 39 37 30 41 31 31 31 35 34 44 32 33 31 46 42 35 44 46 30 44 34 30 31 43 31 37 45 34 43 32 34 33 39 41 41 37 39 30 33 34 36 33 90 01 0c 4c 00 00 00 90 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 45 32 34 46 30 32 34 41 37 33 39 42 46 34 43 43 31 41 34 30 46 44 39 37 30 41 31 31 31 35 34 44 32 33 31 46 42 35 44 46 30 44 34 30 31 43 31 37 45 34 43 32 34 33 39 41 41 37 39 30 33 34 36 33 2e 68 73 74 72 } //1 \tox\E24F024A739BF4CC1A40FD970A11154D231FB5DF0D401C17E4C2439AA7903463.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}