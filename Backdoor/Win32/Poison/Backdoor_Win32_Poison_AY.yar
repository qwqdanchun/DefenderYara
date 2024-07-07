
rule Backdoor_Win32_Poison_AY{
	meta:
		description = "Backdoor:Win32/Poison.AY,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_03_0 = {75 11 8b 4d 90 01 01 51 e8 90 01 04 83 c4 04 e9 90 01 04 6a 03 68 90 00 } //2
		$a_01_1 = {44 4f 57 00 55 50 4c 00 44 54 4b 00 53 54 4b 00 } //1 佄W偕L呄K呓K
		$a_01_2 = {44 49 52 00 50 4c 49 00 50 4c 44 00 52 55 4e 00 } //1 䥄R䱐I䱐D啒N
		$a_01_3 = {25 75 20 30 20 43 4f 54 20 44 41 54 41 20 41 20 25 75 } //1 %u 0 COT DATA A %u
		$a_00_4 = {67 00 6c 00 70 00 2e 00 75 00 69 00 6e 00 } //1 glp.uin
		$a_00_5 = {25 00 73 00 5c 00 25 00 75 00 2e 00 78 00 70 00 6c 00 } //1 %s\%u.xpl
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=5
 
}
rule Backdoor_Win32_Poison_AY_2{
	meta:
		description = "Backdoor:Win32/Poison.AY,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {6a 41 58 6a 70 66 89 85 90 01 04 58 6a 49 66 89 85 90 01 04 66 89 85 90 01 04 58 66 89 85 90 01 04 6a 74 58 6a 5f 66 89 85 90 01 04 58 6a 44 90 00 } //2
		$a_02_1 = {6a 74 66 89 95 90 01 04 5a 6a 5c 66 89 95 90 01 04 5a 6a 57 66 89 95 90 01 04 5a 66 89 95 90 01 04 6a 6e 5e 8b d3 66 89 95 90 01 04 8b d6 66 89 95 90 01 04 6a 64 90 00 } //2
		$a_02_2 = {5c 00 73 00 79 00 73 00 90 02 10 70 00 72 00 65 00 70 00 5c 00 90 00 } //1
		$a_01_3 = {45 00 58 00 50 00 4c 00 4f 00 52 00 45 00 2e 00 6c 00 6e 00 6b 00 } //1 EXPLORE.lnk
	condition:
		((#a_03_0  & 1)*2+(#a_02_1  & 1)*2+(#a_02_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}
rule Backdoor_Win32_Poison_AY_3{
	meta:
		description = "Backdoor:Win32/Poison.AY,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_01_0 = {68 a2 00 00 00 ff d6 57 6a 02 57 6a 56 ff d6 68 e8 03 00 00 ff d3 } //1
		$a_03_1 = {40 3b c7 7c f7 90 09 04 00 80 34 90 00 } //1
		$a_03_2 = {6a 3a 89 45 90 01 01 58 6a 5c 66 89 85 90 01 04 58 6a 77 66 89 85 90 01 04 58 6a 69 90 00 } //1
		$a_02_3 = {2e 00 6c 00 6e 00 6b 00 90 02 10 5c 00 49 00 6e 00 74 00 65 00 6c 00 5c 00 90 02 10 41 00 70 00 70 00 55 00 73 00 65 00 72 00 2e 00 64 00 61 00 74 00 90 02 10 25 00 75 00 90 00 } //1
		$a_00_4 = {5c 00 72 00 69 00 73 00 69 00 6e 00 67 00 00 00 61 00 76 00 69 00 72 00 61 00 00 00 33 00 36 00 30 00 53 00 44 00 00 00 61 00 76 00 67 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_02_3  & 1)*1+(#a_00_4  & 1)*1) >=3
 
}