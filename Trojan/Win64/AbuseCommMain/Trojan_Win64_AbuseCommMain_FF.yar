
rule Trojan_Win64_AbuseCommMain_FF{
	meta:
		description = "Trojan:Win64/AbuseCommMain.FF,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 31 00 30 00 39 00 37 00 43 00 37 00 37 00 34 00 31 00 35 00 45 00 34 00 31 00 39 00 31 00 36 00 34 00 45 00 34 00 45 00 35 00 32 00 32 00 39 00 43 00 46 00 35 00 37 00 42 00 31 00 39 00 35 00 38 00 36 00 43 00 32 00 46 00 33 00 30 00 43 00 31 00 30 00 35 00 30 00 33 00 30 00 36 00 42 00 46 00 34 00 31 00 32 00 37 00 43 00 44 00 43 00 36 00 33 00 39 00 31 00 44 00 34 00 34 00 44 00 } //1 tox:1097C77415E419164E4E5229CF57B19586C2F30C1050306BF4127CDC6391D44D
		$a_02_1 = {31 30 39 37 43 37 37 34 31 35 45 34 31 39 31 36 34 45 34 45 35 32 32 39 43 46 35 37 42 31 39 35 38 36 43 32 46 33 30 43 31 30 35 30 33 30 36 42 46 34 31 32 37 43 44 43 36 33 39 31 44 34 34 44 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //1
		$a_02_2 = {31 30 39 37 43 37 37 34 31 35 45 34 31 39 31 36 34 45 34 45 35 32 32 39 43 46 35 37 42 31 39 35 38 36 43 32 46 33 30 43 31 30 35 30 33 30 36 42 46 34 31 32 37 43 44 43 36 33 39 31 44 34 34 44 90 01 0c 4c 00 00 00 90 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 31 30 39 37 43 37 37 34 31 35 45 34 31 39 31 36 34 45 34 45 35 32 32 39 43 46 35 37 42 31 39 35 38 36 43 32 46 33 30 43 31 30 35 30 33 30 36 42 46 34 31 32 37 43 44 43 36 33 39 31 44 34 34 44 2e 68 73 74 72 } //1 \tox\1097C77415E419164E4E5229CF57B19586C2F30C1050306BF4127CDC6391D44D.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}