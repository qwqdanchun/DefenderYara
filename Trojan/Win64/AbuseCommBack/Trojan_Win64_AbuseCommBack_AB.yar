
rule Trojan_Win64_AbuseCommBack_AB{
	meta:
		description = "Trojan:Win64/AbuseCommBack.AB,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 30 00 45 00 44 00 43 00 34 00 36 00 41 00 31 00 43 00 37 00 46 00 34 00 34 00 39 00 46 00 45 00 31 00 42 00 30 00 35 00 36 00 36 00 33 00 33 00 46 00 33 00 33 00 41 00 36 00 36 00 35 00 45 00 30 00 37 00 30 00 39 00 36 00 38 00 46 00 45 00 37 00 30 00 38 00 38 00 34 00 35 00 42 00 39 00 43 00 43 00 37 00 46 00 30 00 45 00 41 00 44 00 43 00 43 00 34 00 39 00 39 00 32 00 31 00 44 00 3c 00 2f 00 70 00 3e 00 } //1 <p>0EDC46A1C7F449FE1B056633F33A665E070968FE708845B9CC7F0EADCC49921D</p>
		$a_01_1 = {30 45 44 43 34 36 41 31 43 37 46 34 34 39 46 45 31 42 30 35 36 36 33 33 46 33 33 41 36 36 35 45 30 37 30 39 36 38 46 45 37 30 38 38 34 35 42 39 43 43 37 46 30 45 41 44 43 43 34 39 39 32 31 44 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 30 45 44 43 34 36 41 31 43 37 46 34 34 39 46 45 31 42 30 35 36 36 33 33 46 33 33 41 36 36 35 45 30 37 30 39 36 38 46 45 37 30 38 38 34 35 42 39 43 43 37 46 30 45 41 44 43 43 34 39 39 32 31 44 69 64 } //1 tableid0EDC46A1C7F449FE1B056633F33A665E070968FE708845B9CC7F0EADCC49921Did
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}