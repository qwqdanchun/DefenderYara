
rule Trojan_Win64_AbuseCommMain_CW{
	meta:
		description = "Trojan:Win64/AbuseCommMain.CW,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 04 00 00 "
		
	strings :
		$a_00_0 = {74 00 6f 00 78 00 3a 00 43 00 33 00 43 00 43 00 34 00 45 00 32 00 35 00 34 00 44 00 45 00 46 00 38 00 37 00 42 00 32 00 38 00 46 00 44 00 36 00 37 00 38 00 31 00 38 00 46 00 35 00 45 00 34 00 34 00 36 00 42 00 42 00 32 00 33 00 43 00 38 00 39 00 42 00 34 00 30 00 32 00 46 00 41 00 43 00 41 00 33 00 36 00 42 00 34 00 39 00 43 00 30 00 45 00 45 00 43 00 46 00 43 00 37 00 35 00 41 00 41 00 30 00 35 00 38 00 } //1 tox:C3CC4E254DEF87B28FD67818F5E446BB23C89B402FACA36B49C0EECFC75AA058
		$a_02_1 = {43 33 43 43 34 45 32 35 34 44 45 46 38 37 42 32 38 46 44 36 37 38 31 38 46 35 45 34 34 36 42 42 32 33 43 38 39 42 34 30 32 46 41 43 41 33 36 42 34 39 43 30 45 45 43 46 43 37 35 41 41 30 35 38 90 01 0c 00 00 00 00 4c 00 00 00 00 00 00 00 90 00 } //1
		$a_02_2 = {43 33 43 43 34 45 32 35 34 44 45 46 38 37 42 32 38 46 44 36 37 38 31 38 46 35 45 34 34 36 42 42 32 33 43 38 39 42 34 30 32 46 41 43 41 33 36 42 34 39 43 30 45 45 43 46 43 37 35 41 41 30 35 38 90 01 0c 4c 00 00 00 90 00 } //1
		$a_00_3 = {5c 74 6f 78 5c 43 33 43 43 34 45 32 35 34 44 45 46 38 37 42 32 38 46 44 36 37 38 31 38 46 35 45 34 34 36 42 42 32 33 43 38 39 42 34 30 32 46 41 43 41 33 36 42 34 39 43 30 45 45 43 46 43 37 35 41 41 30 35 38 2e 68 73 74 72 } //1 \tox\C3CC4E254DEF87B28FD67818F5E446BB23C89B402FACA36B49C0EECFC75AA058.hstr
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=1
 
}