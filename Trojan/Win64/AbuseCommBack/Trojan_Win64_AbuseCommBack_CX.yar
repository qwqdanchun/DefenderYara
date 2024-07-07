
rule Trojan_Win64_AbuseCommBack_CX{
	meta:
		description = "Trojan:Win64/AbuseCommBack.CX,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 30 00 39 00 42 00 39 00 35 00 30 00 35 00 35 00 30 00 43 00 41 00 44 00 39 00 35 00 38 00 39 00 39 00 41 00 43 00 31 00 37 00 43 00 30 00 42 00 31 00 33 00 38 00 34 00 43 00 44 00 35 00 35 00 43 00 39 00 42 00 44 00 38 00 31 00 33 00 39 00 36 00 42 00 31 00 39 00 45 00 46 00 46 00 45 00 32 00 45 00 38 00 30 00 38 00 33 00 39 00 44 00 36 00 34 00 31 00 44 00 33 00 32 00 32 00 31 00 3c 00 2f 00 70 00 3e 00 } //1 <p>09B950550CAD95899AC17C0B1384CD55C9BD81396B19EFFE2E80839D641D3221</p>
		$a_01_1 = {30 39 42 39 35 30 35 35 30 43 41 44 39 35 38 39 39 41 43 31 37 43 30 42 31 33 38 34 43 44 35 35 43 39 42 44 38 31 33 39 36 42 31 39 45 46 46 45 32 45 38 30 38 33 39 44 36 34 31 44 33 32 32 31 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 30 39 42 39 35 30 35 35 30 43 41 44 39 35 38 39 39 41 43 31 37 43 30 42 31 33 38 34 43 44 35 35 43 39 42 44 38 31 33 39 36 42 31 39 45 46 46 45 32 45 38 30 38 33 39 44 36 34 31 44 33 32 32 31 69 64 } //1 tableid09B950550CAD95899AC17C0B1384CD55C9BD81396B19EFFE2E80839D641D3221id
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}