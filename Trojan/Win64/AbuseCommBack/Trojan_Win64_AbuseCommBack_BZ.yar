
rule Trojan_Win64_AbuseCommBack_BZ{
	meta:
		description = "Trojan:Win64/AbuseCommBack.BZ,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 38 00 37 00 46 00 30 00 32 00 31 00 41 00 44 00 44 00 34 00 44 00 44 00 36 00 39 00 32 00 31 00 37 00 44 00 33 00 44 00 35 00 42 00 42 00 33 00 42 00 34 00 32 00 44 00 41 00 42 00 35 00 32 00 46 00 33 00 36 00 32 00 44 00 38 00 41 00 42 00 45 00 32 00 41 00 38 00 33 00 31 00 43 00 46 00 45 00 33 00 38 00 31 00 44 00 33 00 43 00 37 00 32 00 42 00 42 00 30 00 41 00 43 00 30 00 33 00 3c 00 2f 00 70 00 3e 00 } //1 <p>87F021ADD4DD69217D3D5BB3B42DAB52F362D8ABE2A831CFE381D3C72BB0AC03</p>
		$a_01_1 = {38 37 46 30 32 31 41 44 44 34 44 44 36 39 32 31 37 44 33 44 35 42 42 33 42 34 32 44 41 42 35 32 46 33 36 32 44 38 41 42 45 32 41 38 33 31 43 46 45 33 38 31 44 33 43 37 32 42 42 30 41 43 30 33 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 38 37 46 30 32 31 41 44 44 34 44 44 36 39 32 31 37 44 33 44 35 42 42 33 42 34 32 44 41 42 35 32 46 33 36 32 44 38 41 42 45 32 41 38 33 31 43 46 45 33 38 31 44 33 43 37 32 42 42 30 41 43 30 33 69 64 } //1 tableid87F021ADD4DD69217D3D5BB3B42DAB52F362D8ABE2A831CFE381D3C72BB0AC03id
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}