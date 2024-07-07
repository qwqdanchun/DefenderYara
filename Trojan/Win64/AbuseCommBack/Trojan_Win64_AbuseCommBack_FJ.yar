
rule Trojan_Win64_AbuseCommBack_FJ{
	meta:
		description = "Trojan:Win64/AbuseCommBack.FJ,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 39 00 31 00 41 00 31 00 32 00 30 00 46 00 31 00 44 00 32 00 45 00 34 00 41 00 32 00 44 00 41 00 45 00 41 00 38 00 32 00 45 00 33 00 30 00 34 00 33 00 44 00 39 00 38 00 41 00 46 00 45 00 35 00 38 00 44 00 41 00 41 00 46 00 43 00 31 00 41 00 36 00 33 00 39 00 41 00 44 00 46 00 42 00 36 00 32 00 34 00 43 00 34 00 35 00 44 00 39 00 42 00 44 00 41 00 31 00 34 00 38 00 44 00 32 00 32 00 3c 00 2f 00 70 00 3e 00 } //1 <p>91A120F1D2E4A2DAEA82E3043D98AFE58DAAFC1A639ADFB624C45D9BDA148D22</p>
		$a_01_1 = {39 31 41 31 32 30 46 31 44 32 45 34 41 32 44 41 45 41 38 32 45 33 30 34 33 44 39 38 41 46 45 35 38 44 41 41 46 43 31 41 36 33 39 41 44 46 42 36 32 34 43 34 35 44 39 42 44 41 31 34 38 44 32 32 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 39 31 41 31 32 30 46 31 44 32 45 34 41 32 44 41 45 41 38 32 45 33 30 34 33 44 39 38 41 46 45 35 38 44 41 41 46 43 31 41 36 33 39 41 44 46 42 36 32 34 43 34 35 44 39 42 44 41 31 34 38 44 32 32 69 64 } //1 tableid91A120F1D2E4A2DAEA82E3043D98AFE58DAAFC1A639ADFB624C45D9BDA148D22id
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}