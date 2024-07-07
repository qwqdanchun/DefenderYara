
rule Trojan_Win64_IceID_NL_MTB{
	meta:
		description = "Trojan:Win64/IceID.NL!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {f3 0f 1e fa 80 35 e5 d1 04 00 28 80 35 df d1 04 00 28 80 35 d9 d1 04 00 28 80 35 d3 d1 04 00 28 80 35 cd d1 04 00 28 80 35 c7 d1 04 00 28 80 35 c1 d1 04 00 28 80 35 bb d1 04 00 28 80 35 b5 d1 04 00 28 80 35 af d1 04 00 28 80 35 a9 d1 04 00 28 } //1
		$a_01_1 = {80 35 97 d1 04 00 47 80 35 91 d1 04 00 47 80 35 8b d1 04 00 47 80 35 85 d1 04 00 47 80 35 7f d1 04 00 47 80 35 79 d1 04 00 47 80 35 73 d1 04 00 47 80 35 6d d1 04 00 47 80 35 67 d1 04 00 47 80 35 61 d1 04 00 47 80 35 5b d1 04 00 47 80 35 55 d1 04 00 47 80 35 4f d1 04 00 47 80 35 49 d1 04 00 47 80 35 43 d1 04 00 47 0f 28 05 41 d1 04 00 0f 57 05 ca 7e 00 00 0f 29 05 33 d1 04 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}