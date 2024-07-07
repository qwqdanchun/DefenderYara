
rule Trojan_Win64_AbuseCommBack_EJ{
	meta:
		description = "Trojan:Win64/AbuseCommBack.EJ,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 45 00 35 00 42 00 42 00 46 00 41 00 44 00 32 00 44 00 42 00 33 00 46 00 42 00 34 00 39 00 37 00 45 00 41 00 30 00 33 00 36 00 31 00 32 00 42 00 32 00 34 00 32 00 38 00 46 00 39 00 32 00 37 00 46 00 44 00 38 00 41 00 39 00 42 00 33 00 33 00 33 00 33 00 44 00 35 00 32 00 34 00 46 00 44 00 35 00 31 00 44 00 34 00 33 00 42 00 30 00 32 00 39 00 42 00 37 00 38 00 37 00 30 00 35 00 37 00 3c 00 2f 00 70 00 3e 00 } //1 <p>E5BBFAD2DB3FB497EA03612B2428F927FD8A9B3333D524FD51D43B029B787057</p>
		$a_01_1 = {45 35 42 42 46 41 44 32 44 42 33 46 42 34 39 37 45 41 30 33 36 31 32 42 32 34 32 38 46 39 32 37 46 44 38 41 39 42 33 33 33 33 44 35 32 34 46 44 35 31 44 34 33 42 30 32 39 42 37 38 37 30 35 37 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 45 35 42 42 46 41 44 32 44 42 33 46 42 34 39 37 45 41 30 33 36 31 32 42 32 34 32 38 46 39 32 37 46 44 38 41 39 42 33 33 33 33 44 35 32 34 46 44 35 31 44 34 33 42 30 32 39 42 37 38 37 30 35 37 69 64 } //1 tableidE5BBFAD2DB3FB497EA03612B2428F927FD8A9B3333D524FD51D43B029B787057id
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}