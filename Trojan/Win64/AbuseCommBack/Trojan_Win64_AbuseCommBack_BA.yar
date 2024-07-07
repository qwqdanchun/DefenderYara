
rule Trojan_Win64_AbuseCommBack_BA{
	meta:
		description = "Trojan:Win64/AbuseCommBack.BA,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {3c 00 70 00 3e 00 36 00 42 00 37 00 36 00 30 00 30 00 35 00 46 00 46 00 35 00 42 00 33 00 37 00 33 00 39 00 42 00 34 00 34 00 43 00 45 00 33 00 38 00 46 00 30 00 46 00 34 00 34 00 35 00 32 00 43 00 30 00 44 00 46 00 32 00 34 00 33 00 33 00 46 00 37 00 42 00 34 00 34 00 42 00 35 00 32 00 32 00 44 00 43 00 44 00 31 00 37 00 42 00 36 00 31 00 35 00 31 00 41 00 36 00 36 00 31 00 37 00 37 00 34 00 34 00 3c 00 2f 00 70 00 3e 00 } //1 <p>6B76005FF5B3739B44CE38F0F4452C0DF2433F7B44B522DCD17B6151A6617744</p>
		$a_01_1 = {36 42 37 36 30 30 35 46 46 35 42 33 37 33 39 42 34 34 43 45 33 38 46 30 46 34 34 35 32 43 30 44 46 32 34 33 33 46 37 42 34 34 42 35 32 32 44 43 44 31 37 42 36 31 35 31 41 36 36 31 37 37 34 34 00 00 00 00 00 00 00 00 } //1
		$a_01_2 = {74 61 62 6c 65 69 64 36 42 37 36 30 30 35 46 46 35 42 33 37 33 39 42 34 34 43 45 33 38 46 30 46 34 34 35 32 43 30 44 46 32 34 33 33 46 37 42 34 34 42 35 32 32 44 43 44 31 37 42 36 31 35 31 41 36 36 31 37 37 34 34 69 64 } //1 tableid6B76005FF5B3739B44CE38F0F4452C0DF2433F7B44B522DCD17B6151A6617744id
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}