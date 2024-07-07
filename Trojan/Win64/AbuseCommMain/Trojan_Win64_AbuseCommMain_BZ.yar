
rule Trojan_Win64_AbuseCommMain_BZ{
	meta:
		description = "Trojan:Win64/AbuseCommMain.BZ,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 38 00 37 00 46 00 30 00 32 00 31 00 41 00 44 00 44 00 34 00 44 00 44 00 36 00 39 00 32 00 31 00 37 00 44 00 33 00 44 00 35 00 42 00 42 00 33 00 42 00 34 00 32 00 44 00 41 00 42 00 35 00 32 00 46 00 33 00 36 00 32 00 44 00 38 00 41 00 42 00 45 00 32 00 41 00 38 00 33 00 31 00 43 00 46 00 45 00 33 00 38 00 31 00 44 00 33 00 43 00 37 00 32 00 42 00 42 00 30 00 41 00 43 00 30 00 33 00 } //1 tox:87F021ADD4DD69217D3D5BB3B42DAB52F362D8ABE2A831CFE381D3C72BB0AC03
		$a_02_1 = {38 37 46 30 32 31 41 44 44 34 44 44 36 39 32 31 37 44 33 44 35 42 42 33 42 34 32 44 41 42 35 32 46 33 36 32 44 38 41 42 45 32 41 38 33 31 43 46 45 33 38 31 44 33 43 37 32 42 42 30 41 43 30 33 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //1
		$a_02_2 = {38 37 46 30 32 31 41 44 44 34 44 44 36 39 32 31 37 44 33 44 35 42 42 33 42 34 32 44 41 42 35 32 46 33 36 32 44 38 41 42 45 32 41 38 33 31 43 46 45 33 38 31 44 33 43 37 32 42 42 30 41 43 30 33 90 01 0c 4c 00 00 00 90 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 38 37 46 30 32 31 41 44 44 34 44 44 36 39 32 31 37 44 33 44 35 42 42 33 42 34 32 44 41 42 35 32 46 33 36 32 44 38 41 42 45 32 41 38 33 31 43 46 45 33 38 31 44 33 43 37 32 42 42 30 41 43 30 33 2e 68 73 74 72 } //1 \tox\87F021ADD4DD69217D3D5BB3B42DAB52F362D8ABE2A831CFE381D3C72BB0AC03.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}