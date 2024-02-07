
rule Backdoor_BAT_Bladabindi_ESG_MTB{
	meta:
		description = "Backdoor:BAT/Bladabindi.ESG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 37 33 63 33 63 61 63 62 2d 32 39 39 65 2d 34 38 62 63 2d 61 39 62 36 2d 36 33 38 31 65 62 38 61 63 64 31 66 } //01 00  $73c3cacb-299e-48bc-a9b6-6381eb8acd1f
		$a_01_1 = {47 00 54 00 42 00 69 00 74 00 5f 00 42 00 65 00 74 00 61 00 5f 00 } //01 00  GTBit_Beta_
		$a_01_2 = {47 00 72 00 6f 00 77 00 74 00 6f 00 70 00 69 00 61 00 2e 00 65 00 78 00 65 00 } //01 00  Growtopia.exe
		$a_01_3 = {00 4c 61 75 6e 63 68 47 72 6f 77 74 6f 70 69 61 00 } //01 00 
		$a_01_4 = {00 52 65 63 6f 72 64 4d 6f 75 73 65 43 6c 69 63 6b 00 } //01 00  刀捥牯䵤畯敳汃捩k
		$a_01_5 = {00 55 6e 68 6f 6f 6b 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 00 } //01 00 
		$a_01_6 = {00 53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 00 } //01 00  匀瑥楗摮睯䡳潯䕫x
		$a_01_7 = {00 53 65 74 46 6f 72 65 67 72 6f 75 6e 64 57 69 6e 64 6f 77 00 } //00 00 
	condition:
		any of ($a_*)
 
}