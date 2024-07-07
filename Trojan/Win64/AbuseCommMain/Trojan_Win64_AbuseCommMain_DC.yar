
rule Trojan_Win64_AbuseCommMain_DC{
	meta:
		description = "Trojan:Win64/AbuseCommMain.DC,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 33 00 37 00 37 00 33 00 37 00 43 00 35 00 41 00 39 00 30 00 41 00 33 00 32 00 44 00 36 00 34 00 31 00 37 00 44 00 43 00 31 00 32 00 41 00 30 00 31 00 43 00 41 00 36 00 41 00 35 00 42 00 38 00 34 00 39 00 36 00 46 00 37 00 41 00 42 00 31 00 41 00 41 00 41 00 43 00 35 00 43 00 46 00 38 00 39 00 41 00 44 00 33 00 39 00 38 00 42 00 37 00 31 00 33 00 41 00 31 00 31 00 36 00 33 00 46 00 } //1 tox:37737C5A90A32D6417DC12A01CA6A5B8496F7AB1AAAC5CF89AD398B713A1163F
		$a_02_1 = {33 37 37 33 37 43 35 41 39 30 41 33 32 44 36 34 31 37 44 43 31 32 41 30 31 43 41 36 41 35 42 38 34 39 36 46 37 41 42 31 41 41 41 43 35 43 46 38 39 41 44 33 39 38 42 37 31 33 41 31 31 36 33 46 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //1
		$a_02_2 = {33 37 37 33 37 43 35 41 39 30 41 33 32 44 36 34 31 37 44 43 31 32 41 30 31 43 41 36 41 35 42 38 34 39 36 46 37 41 42 31 41 41 41 43 35 43 46 38 39 41 44 33 39 38 42 37 31 33 41 31 31 36 33 46 90 01 0c 4c 00 00 00 90 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 33 37 37 33 37 43 35 41 39 30 41 33 32 44 36 34 31 37 44 43 31 32 41 30 31 43 41 36 41 35 42 38 34 39 36 46 37 41 42 31 41 41 41 43 35 43 46 38 39 41 44 33 39 38 42 37 31 33 41 31 31 36 33 46 2e 68 73 74 72 } //1 \tox\37737C5A90A32D6417DC12A01CA6A5B8496F7AB1AAAC5CF89AD398B713A1163F.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}