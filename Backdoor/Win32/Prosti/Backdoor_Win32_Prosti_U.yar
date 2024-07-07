
rule Backdoor_Win32_Prosti_U{
	meta:
		description = "Backdoor:Win32/Prosti.U,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_01_0 = {ab ab ab e9 54 01 00 00 66 b8 0a 84 bb 00 00 f7 bf 80 fa 60 ba 4b 45 58 50 73 02 b0 03 39 93 00 10 00 00 } //5
		$a_02_1 = {4e 6f 52 65 61 6c 4d 6f 64 65 90 02 05 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 57 69 6e 4f 6c 64 41 70 70 90 02 10 44 65 6c 65 74 65 90 02 02 2e 62 61 74 90 02 10 3a 74 72 79 90 00 } //1
		$a_02_2 = {6d 79 64 6c 6c 90 02 10 64 6c 6c 66 69 6c 65 90 00 } //1
		$a_00_3 = {52 74 6c 4e 74 53 74 61 74 75 73 54 6f 44 6f 73 45 72 72 6f 72 00 4e 74 41 6c 6c 6f 63 61 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 00 4e 74 46 72 65 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 00 4e 74 4f 70 65 6e 54 68 72 65 61 64 00 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 瑒乬却慴畴味䑯獯牅潲r瑎汁潬慣整楖瑲慵䵬浥牯y瑎牆敥楖瑲慵䵬浥牯y瑎灏湥桔敲摡刀慥偤潲散獳敍潭祲
	condition:
		((#a_01_0  & 1)*5+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=7
 
}