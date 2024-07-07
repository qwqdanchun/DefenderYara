
rule Trojan_Win64_AbuseCommBack_EZ{
	meta:
		description = "Trojan:Win64/AbuseCommBack.EZ,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 32 00 38 00 35 00 43 00 46 00 45 00 43 00 32 00 42 00 43 00 38 00 30 00 41 00 38 00 41 00 36 00 39 00 38 00 42 00 33 00 45 00 34 00 45 00 30 00 43 00 38 00 36 00 41 00 30 00 46 00 43 00 42 00 33 00 32 00 39 00 35 00 36 00 39 00 44 00 41 00 41 00 31 00 36 00 45 00 41 00 31 00 31 00 46 00 44 00 30 00 32 00 38 00 37 00 37 00 34 00 45 00 32 00 36 00 42 00 44 00 44 00 39 00 37 00 44 00 3c 00 2f 00 70 00 3e 00 } //1 <p>285CFEC2BC80A8A698B3E4E0C86A0FCB329569DAA16EA11FD028774E26BDD97D</p>
		$a_01_1 = {32 38 35 43 46 45 43 32 42 43 38 30 41 38 41 36 39 38 42 33 45 34 45 30 43 38 36 41 30 46 43 42 33 32 39 35 36 39 44 41 41 31 36 45 41 31 31 46 44 30 32 38 37 37 34 45 32 36 42 44 44 39 37 44 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 32 38 35 43 46 45 43 32 42 43 38 30 41 38 41 36 39 38 42 33 45 34 45 30 43 38 36 41 30 46 43 42 33 32 39 35 36 39 44 41 41 31 36 45 41 31 31 46 44 30 32 38 37 37 34 45 32 36 42 44 44 39 37 44 69 64 } //1 tableid285CFEC2BC80A8A698B3E4E0C86A0FCB329569DAA16EA11FD028774E26BDD97Did
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}