
rule Trojan_Win64_AbuseCommMain_FO{
	meta:
		description = "Trojan:Win64/AbuseCommMain.FO,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 36 00 43 00 35 00 33 00 32 00 41 00 31 00 45 00 45 00 42 00 43 00 39 00 32 00 32 00 35 00 36 00 33 00 39 00 44 00 39 00 31 00 42 00 44 00 45 00 43 00 46 00 45 00 39 00 46 00 37 00 42 00 30 00 41 00 44 00 43 00 30 00 35 00 38 00 32 00 30 00 38 00 33 00 43 00 35 00 43 00 30 00 42 00 45 00 31 00 38 00 38 00 46 00 34 00 33 00 43 00 43 00 30 00 46 00 34 00 38 00 32 00 41 00 34 00 30 00 } //01 00  tox:6C532A1EEBC9225639D91BDECFE9F7B0ADC0582083C5C0BE188F43CC0F482A40
		$a_02_1 = {36 43 35 33 32 41 31 45 45 42 43 39 32 32 35 36 33 39 44 39 31 42 44 45 43 46 45 39 46 37 42 30 41 44 43 30 35 38 32 30 38 33 43 35 43 30 42 45 31 38 38 46 34 33 43 43 30 46 34 38 32 41 34 30 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {36 43 35 33 32 41 31 45 45 42 43 39 32 32 35 36 33 39 44 39 31 42 44 45 43 46 45 39 46 37 42 30 41 44 43 30 35 38 32 30 38 33 43 35 43 30 42 45 31 38 38 46 34 33 43 43 30 46 34 38 32 41 34 30 90 01 0c 4c 00 00 00 90 00 } //01 00 
		$a_00_3 = {5c 74 6f 78 5c 36 43 35 33 32 41 31 45 45 42 43 39 32 32 35 36 33 39 44 39 31 42 44 45 43 46 45 39 46 37 42 30 41 44 43 30 35 38 32 30 38 33 43 35 43 30 42 45 31 38 38 46 34 33 43 43 30 46 34 38 32 41 34 30 2e 68 73 74 72 } //00 00  \tox\6C532A1EEBC9225639D91BDECFE9F7B0ADC0582083C5C0BE188F43CC0F482A40.hstr
	condition:
		any of ($a_*)
 
}