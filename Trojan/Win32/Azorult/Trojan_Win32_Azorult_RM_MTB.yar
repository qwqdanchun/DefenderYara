
rule Trojan_Win32_Azorult_RM_MTB{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {ee 3d ea f4 03 90 02 05 33 90 02 05 89 90 02 05 a3 01 00 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_2{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {b8 fe 93 8d 6a 33 d1 31 90 01 02 8b 90 01 02 8d 90 01 05 e8 90 01 04 83 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_3{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 45 e0 01 90 01 02 c7 90 01 05 84 cd 10 fe 8b 90 01 02 33 90 01 02 89 90 00 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}
rule Trojan_Win32_Azorult_RM_MTB_4{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {81 fb 61 36 13 01 0f 90 02 05 eb 90 02 05 a1 90 02 04 a3 90 02 04 33 ff 81 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_5{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {b8 ec 15 00 00 e8 90 01 04 53 55 56 33 f6 81 3d 90 01 04 77 01 00 00 57 75 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_6{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {c1 e2 04 03 90 02 05 3d a9 0f 00 00 75 90 02 05 c7 90 02 05 40 2e eb ed 3d 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_7{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {d3 ea 89 55 90 01 01 8b 90 01 02 03 90 01 02 89 90 01 02 c7 90 01 05 fc 03 cf ff 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_8{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {d3 ea 89 55 90 01 01 8b 90 01 02 03 90 01 02 89 90 01 02 c7 90 01 05 fc 03 cf ff 81 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_9{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {c1 ea 05 03 54 24 90 01 01 50 c7 05 90 01 04 b4 21 e1 c5 c7 05 90 01 04 ff ff ff ff e8 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_10{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {40 2e eb ed 8b 90 01 02 8b fb d3 ef c7 90 01 05 2e ce 50 91 03 90 01 02 3d eb 03 00 00 75 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_11{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {81 e9 12 c9 23 00 89 90 01 02 8b 90 02 19 c7 90 02 05 fc 03 cf ff 81 90 02 05 e3 00 00 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_12{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {d3 e8 89 45 90 01 01 8b 90 01 02 01 90 01 02 c7 90 01 05 84 cd 10 fe 8b 90 01 02 51 8d 55 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_13{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {d3 e8 c7 05 90 01 04 ee 3d ea f4 03 45 90 01 01 33 c2 89 45 90 01 01 81 fb a3 01 00 00 75 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_14{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 45 e0 01 90 01 02 c7 90 01 05 84 cd 10 fe 8b 90 01 02 81 90 01 05 7c 32 ef 01 01 90 01 05 8b 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_15{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {d3 e8 8b 4d 90 01 01 03 cb c7 05 90 01 04 2e ce 50 91 03 45 90 01 01 33 c1 33 c7 83 90 01 05 27 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_16{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 45 e0 89 45 90 01 01 c7 90 01 05 84 cd 10 fe 8b 90 01 02 33 90 01 02 89 90 01 02 8b 90 01 02 33 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_17{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 c3 c1 ea 05 51 89 44 24 90 01 01 c7 05 90 01 04 b4 21 e1 c5 c7 05 90 01 04 ff ff ff ff 03 d5 e8 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_18{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {2e ce 50 91 e8 90 01 04 8b 90 02 05 8b 90 01 01 8b 90 01 01 d3 90 01 01 03 90 02 04 33 90 01 01 83 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_19{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {b8 fe 93 8d 6a 8b 55 90 01 01 33 d1 33 d3 8d 8d 90 01 04 89 55 90 01 01 e8 90 01 04 89 90 01 02 25 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_20{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {81 ec 1c 04 00 00 a1 90 01 04 33 c4 89 84 24 90 01 04 a1 90 01 04 56 57 8b 3d 90 01 04 a3 90 01 04 33 f6 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_21{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {b8 fe 93 8d 6a 8b 90 01 05 33 c3 31 90 01 02 8b 90 01 02 8d 90 01 05 e8 90 01 04 81 90 01 05 26 04 00 00 75 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_22{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {c1 e2 04 89 90 01 02 8b 90 01 02 01 90 01 02 8b 90 01 02 03 90 01 02 89 90 01 02 81 90 01 05 96 01 00 00 75 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_23{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {c1 e8 05 89 90 02 04 8b 90 02 05 33 90 02 05 8b 90 02 0a 03 c1 33 c7 83 90 02 0a 27 c7 90 02 0a 2e ce 50 91 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_24{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {d3 e8 89 45 90 01 01 8b 90 01 02 01 90 01 02 c7 90 01 05 64 61 15 fe 8b 90 01 02 81 90 01 05 9c 9e ea 01 01 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_25{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {d3 ea c7 05 90 01 04 2e ce 50 91 89 55 90 01 01 8b 85 90 01 04 01 45 90 01 01 8b 4d 90 01 01 33 cb 33 4d 90 01 01 8d 85 90 01 04 89 90 00 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}
rule Trojan_Win32_Azorult_RM_MTB_26{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {c1 e9 05 c7 05 90 01 04 84 10 d6 cb c7 05 90 01 04 ff ff ff ff 89 4c 24 90 01 01 8b 84 24 90 01 04 01 44 24 90 01 01 81 3d 90 01 04 c6 0e 00 00 75 90 00 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_27{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {fe 93 8d 6a 8b 90 02 14 03 cb 33 c1 31 90 02 05 81 90 02 05 a3 01 00 00 90 00 } //1
		$a_03_1 = {c1 ea 05 03 55 90 01 01 83 90 02 05 1b 8b c2 89 45 90 01 01 c7 90 02 05 fc 03 cf ff 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_28{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {d3 e8 89 45 90 01 01 8b 90 01 02 01 90 01 02 c7 90 01 05 fc 03 cf ff 8b 90 01 02 51 8d 90 00 } //1
		$a_03_1 = {d3 ea 89 55 90 01 01 8b 90 01 02 01 90 01 02 c7 90 01 05 fc 03 cf ff 81 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_29{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b ec b8 84 24 00 00 e8 90 01 04 81 3d 90 01 04 77 01 00 00 75 90 00 } //1
		$a_03_1 = {33 f0 29 75 90 01 01 51 c7 05 90 01 04 b4 02 d7 cb c7 05 90 01 04 ff ff ff ff e8 90 01 04 ff 4d 90 01 01 0f 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_30{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {c1 e8 05 89 45 90 01 01 c7 05 90 01 04 2e ce 50 91 8b 85 90 01 04 01 45 90 01 01 81 3d 90 01 04 12 09 00 00 75 90 00 } //1
		$a_03_1 = {b8 fe 93 8d 6a 33 90 01 01 31 90 01 02 8b 90 01 02 8d 90 01 05 e8 90 01 04 81 90 01 05 26 04 00 00 75 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}
rule Trojan_Win32_Azorult_RM_MTB_31{
	meta:
		description = "Trojan:Win32/Azorult.RM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_03_0 = {2b fe 8b f7 90 02 05 04 03 90 01 02 03 c7 81 90 02 05 be 01 00 00 89 90 00 } //1
		$a_03_1 = {33 f0 2b d6 90 02 0a c7 90 02 0a b4 02 d7 cb c7 90 02 0a 89 90 00 } //1
		$a_03_2 = {33 f0 29 75 90 02 0a c7 05 90 02 0a b4 02 d7 cb c7 05 90 02 05 ff ff ff ff 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=1
 
}