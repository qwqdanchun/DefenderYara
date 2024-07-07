
rule Backdoor_BAT_Bladabindi_AJ{
	meta:
		description = "Backdoor:BAT/Bladabindi.AJ,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {00 4e 74 53 65 74 49 6e 66 6f 72 6d 61 74 69 6f 6e 50 72 6f 63 65 73 73 00 6e 74 64 6c 6c 00 } //1
		$a_01_1 = {00 63 61 70 47 65 74 44 72 69 76 65 72 44 65 73 63 72 69 70 74 69 6f 6e 41 00 61 76 69 63 61 70 33 32 2e 64 6c 6c 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Backdoor_BAT_Bladabindi_AJ_2{
	meta:
		description = "Backdoor:BAT/Bladabindi.AJ,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 04 00 00 "
		
	strings :
		$a_03_0 = {1f 1d 0f 01 1a 28 90 01 02 00 06 26 90 00 } //1
		$a_03_1 = {1f 1d 0f 00 1a 28 90 01 02 00 06 26 90 00 } //1
		$a_01_2 = {00 4e 74 53 65 74 49 6e 66 6f 72 6d 61 74 69 6f 6e 50 72 6f 63 65 73 73 00 6e 74 64 6c 6c 00 } //10
		$a_01_3 = {00 63 61 70 47 65 74 44 72 69 76 65 72 44 65 73 63 72 69 70 74 69 6f 6e 41 00 61 76 69 63 61 70 33 32 2e 64 6c 6c 00 } //10
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10) >=21
 
}
rule Backdoor_BAT_Bladabindi_AJ_3{
	meta:
		description = "Backdoor:BAT/Bladabindi.AJ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {1f 1d 0f 01 1a 28 90 09 05 00 90 03 01 01 6f 28 90 01 02 00 90 04 01 03 0a 06 2b 90 01 08 00 06 26 90 00 } //1
		$a_01_1 = {00 4e 74 53 65 74 49 6e 66 6f 72 6d 61 74 69 6f 6e 50 72 6f 63 65 73 73 00 6e 74 64 6c 6c 00 } //1
		$a_01_2 = {00 63 61 70 47 65 74 44 72 69 76 65 72 44 65 73 63 72 69 70 74 69 6f 6e 41 00 61 76 69 63 61 70 33 32 2e 64 6c 6c 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Backdoor_BAT_Bladabindi_AJ_4{
	meta:
		description = "Backdoor:BAT/Bladabindi.AJ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {1f 1d 0f 00 1a 28 90 09 05 00 90 03 01 01 6f 28 90 01 02 00 90 04 01 03 0a 06 2b 90 01 08 00 06 26 90 00 } //1
		$a_01_1 = {00 4e 74 53 65 74 49 6e 66 6f 72 6d 61 74 69 6f 6e 50 72 6f 63 65 73 73 00 6e 74 64 6c 6c 00 } //1
		$a_01_2 = {00 63 61 70 47 65 74 44 72 69 76 65 72 44 65 73 63 72 69 70 74 69 6f 6e 41 00 61 76 69 63 61 70 33 32 2e 64 6c 6c 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule Backdoor_BAT_Bladabindi_AJ_5{
	meta:
		description = "Backdoor:BAT/Bladabindi.AJ,SIGNATURE_TYPE_PEHSTR_EXT,29 00 29 00 07 00 00 "
		
	strings :
		$a_00_0 = {7c 27 7c 27 7c } //10 |'|'|
		$a_00_1 = {5b 45 4e 54 45 52 5d 0d 0a } //10
		$a_00_2 = {5b 54 41 50 5d 0d 0a } //10
		$a_00_3 = {6e 65 74 73 68 20 66 69 72 65 77 61 6c 6c 20 61 64 64 20 61 6c 6c 6f 77 65 64 70 72 6f 67 72 61 6d 20 22 } //10 netsh firewall add allowedprogram "
		$a_02_4 = {63 6d 64 2e 65 78 65 20 2f 90 01 01 20 70 69 6e 67 20 30 20 26 20 64 65 6c 20 22 90 00 } //1
		$a_02_5 = {63 6d 64 2e 65 78 65 20 2f 90 01 01 20 70 69 6e 67 20 30 20 2d 6e 20 90 02 04 20 26 20 64 65 6c 20 22 90 00 } //1
		$a_02_6 = {63 6d 64 2e 65 78 65 20 2f 90 01 01 20 70 69 6e 67 20 31 32 37 2e 30 2e 30 2e 31 20 26 20 64 65 6c 20 22 90 00 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1+(#a_02_6  & 1)*1) >=41
 
}
rule Backdoor_BAT_Bladabindi_AJ_6{
	meta:
		description = "Backdoor:BAT/Bladabindi.AJ,SIGNATURE_TYPE_PEHSTR_EXT,29 00 29 00 06 00 00 "
		
	strings :
		$a_00_0 = {7c 00 27 00 7c 00 27 00 7c 00 } //10 |'|'|
		$a_00_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //10 Software\Microsoft\Windows\CurrentVersion\Run
		$a_00_2 = {5b 00 45 00 4e 00 54 00 45 00 52 00 5d 00 } //10 [ENTER]
		$a_01_3 = {00 4e 74 53 65 74 49 6e 66 6f 72 6d 61 74 69 6f 6e 50 72 6f 63 65 73 73 00 6e 74 64 6c 6c } //10 一却瑥湉潦浲瑡潩偮潲散獳渀摴汬
		$a_02_4 = {45 00 78 00 65 00 63 00 75 00 74 00 65 00 20 00 45 00 52 00 52 00 4f 00 52 00 90 02 10 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 20 00 45 00 52 00 52 00 4f 00 52 00 90 00 } //1
		$a_02_5 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 20 00 45 00 52 00 52 00 4f 00 52 00 90 02 10 45 00 78 00 65 00 63 00 75 00 74 00 65 00 20 00 45 00 52 00 52 00 4f 00 52 00 90 00 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_01_3  & 1)*10+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1) >=41
 
}
rule Backdoor_BAT_Bladabindi_AJ_7{
	meta:
		description = "Backdoor:BAT/Bladabindi.AJ,SIGNATURE_TYPE_PEHSTR_EXT,29 00 29 00 06 00 00 "
		
	strings :
		$a_00_0 = {5b 00 65 00 6e 00 64 00 6f 00 66 00 5d 00 } //10 [endof]
		$a_00_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //10 Software\Microsoft\Windows\CurrentVersion\Run
		$a_00_2 = {5b 00 45 00 4e 00 54 00 45 00 52 00 5d 00 } //10 [ENTER]
		$a_01_3 = {00 4e 74 53 65 74 49 6e 66 6f 72 6d 61 74 69 6f 6e 50 72 6f 63 65 73 73 00 6e 74 64 6c 6c } //10 一却瑥湉潦浲瑡潩偮潲散獳渀摴汬
		$a_02_4 = {45 00 78 00 65 00 63 00 75 00 74 00 65 00 20 00 45 00 52 00 52 00 4f 00 52 00 90 02 10 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 20 00 45 00 52 00 52 00 4f 00 52 00 90 00 } //1
		$a_02_5 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 20 00 45 00 52 00 52 00 4f 00 52 00 90 02 10 45 00 78 00 65 00 63 00 75 00 74 00 65 00 20 00 45 00 52 00 52 00 4f 00 52 00 90 00 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_01_3  & 1)*10+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1) >=41
 
}
rule Backdoor_BAT_Bladabindi_AJ_8{
	meta:
		description = "Backdoor:BAT/Bladabindi.AJ,SIGNATURE_TYPE_PEHSTR_EXT,29 00 29 00 07 00 00 "
		
	strings :
		$a_00_0 = {7c 00 27 00 7c 00 27 00 7c 00 } //10 |'|'|
		$a_00_1 = {5b 00 45 00 4e 00 54 00 45 00 52 00 5d 00 0d 00 0a 00 } //10
		$a_00_2 = {5b 00 54 00 41 00 50 00 5d 00 0d 00 0a 00 } //10
		$a_00_3 = {6e 00 65 00 74 00 73 00 68 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 61 00 64 00 64 00 20 00 61 00 6c 00 6c 00 6f 00 77 00 65 00 64 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 22 00 } //10 netsh firewall add allowedprogram "
		$a_02_4 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 90 01 02 20 00 70 00 69 00 6e 00 67 00 20 00 30 00 20 00 26 00 20 00 64 00 65 00 6c 00 20 00 22 00 90 00 } //1
		$a_02_5 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 90 01 02 20 00 70 00 69 00 6e 00 67 00 20 00 30 00 20 00 2d 00 6e 00 20 00 90 02 08 20 00 26 00 20 00 64 00 65 00 6c 00 20 00 22 00 90 00 } //1
		$a_02_6 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 90 01 02 20 00 70 00 69 00 6e 00 67 00 20 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 20 00 26 00 20 00 64 00 65 00 6c 00 20 00 22 00 90 00 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1+(#a_02_6  & 1)*1) >=41
 
}
rule Backdoor_BAT_Bladabindi_AJ_9{
	meta:
		description = "Backdoor:BAT/Bladabindi.AJ,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {7c 00 27 00 7c 00 27 00 7c 00 } //1 |'|'|
		$a_01_1 = {53 00 47 00 46 00 6a 00 53 00 32 00 56 00 6b 00 } //1 SGFjS2Vk
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {22 00 20 00 2e 00 2e 00 } //1 " ..
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}