
rule Trojan_Win64_AbuseCommMain_B{
	meta:
		description = "Trojan:Win64/AbuseCommMain.B,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 38 00 42 00 45 00 44 00 43 00 34 00 31 00 31 00 30 00 31 00 32 00 41 00 33 00 33 00 42 00 41 00 33 00 34 00 46 00 34 00 39 00 31 00 33 00 30 00 44 00 30 00 46 00 31 00 38 00 36 00 39 00 39 00 33 00 43 00 36 00 41 00 33 00 32 00 44 00 41 00 44 00 38 00 39 00 37 00 36 00 46 00 36 00 41 00 35 00 44 00 38 00 32 00 43 00 31 00 45 00 44 00 32 00 33 00 30 00 35 00 34 00 43 00 30 00 35 00 } //01 00  tox:8BEDC411012A33BA34F49130D0F186993C6A32DAD8976F6A5D82C1ED23054C05
		$a_02_1 = {38 42 45 44 43 34 31 31 30 31 32 41 33 33 42 41 33 34 46 34 39 31 33 30 44 30 46 31 38 36 39 39 33 43 36 41 33 32 44 41 44 38 39 37 36 46 36 41 35 44 38 32 43 31 45 44 32 33 30 35 34 43 30 35 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {38 42 45 44 43 34 31 31 30 31 32 41 33 33 42 41 33 34 46 34 39 31 33 30 44 30 46 31 38 36 39 39 33 43 36 41 33 32 44 41 44 38 39 37 36 46 36 41 35 44 38 32 43 31 45 44 32 33 30 35 34 43 30 35 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 38 42 45 44 43 34 31 31 30 31 32 41 33 33 42 41 33 34 46 34 39 31 33 30 44 30 46 31 38 36 39 39 33 43 36 41 33 32 44 41 44 38 39 37 36 46 36 41 35 44 38 32 43 31 45 44 32 33 30 35 34 43 30 35 2e 68 73 74 72 } //00 00  \tox\8BEDC411012A33BA34F49130D0F186993C6A32DAD8976F6A5D82C1ED23054C05.hstr
	condition:
		any of ($a_*)
 
}