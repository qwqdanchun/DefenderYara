
rule Trojan_Win64_Tedy_NT_MTB{
	meta:
		description = "Trojan:Win64/Tedy.NT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {e8 2e 62 00 00 44 8b cb 4c 8b c0 33 d2 48 8d 0d ?? ?? ?? ?? e8 aa e8 ff ff } //3
		$a_03_1 = {e8 0a 31 00 00 e8 0d 31 00 00 48 8d 2d ?? ?? ?? ?? 48 8d 15 55 00 02 00 41 b8 00 10 00 00 48 89 e9 } //3
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*3) >=6
 
}
rule Trojan_Win64_Tedy_NT_MTB_2{
	meta:
		description = "Trojan:Win64/Tedy.NT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {48 75 73 43 6c 61 73 73 } //1 HusClass
		$a_01_1 = {4b 65 79 20 64 6f 65 73 6e 74 20 65 78 69 73 74 20 21 } //1 Key doesnt exist !
		$a_01_2 = {54 54 52 73 20 49 6e 74 65 72 6e 61 6c 20 53 6c 6f 74 74 65 64 } //1 TTRs Internal Slotted
		$a_01_3 = {57 4f 52 4b 20 4f 4e 4c 59 20 4f 4e 20 45 41 43 } //1 WORK ONLY ON EAC
		$a_01_4 = {76 76 73 6b 32 6e 4a 57 50 64 } //1 vvsk2nJWPd
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Trojan_Win64_Tedy_NT_MTB_3{
	meta:
		description = "Trojan:Win64/Tedy.NT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_03_0 = {74 12 45 33 c0 41 8d 50 ?? 33 c9 48 8b 03 ff 15 d1 2f 00 00 e8 f8 06 00 00 48 8b d8 48 83 38 ?? 74 14 48 8b c8 } //5
		$a_01_1 = {46 69 78 20 46 61 6b 65 20 44 61 6d 61 67 65 } //1 Fix Fake Damage
		$a_01_2 = {43 41 52 4c 4f 53 20 43 48 45 41 54 } //1 CARLOS CHEAT
		$a_01_3 = {41 41 52 59 41 4e 20 56 34 58 20 2d 20 53 6e 69 70 65 72 20 50 61 6e 65 6c } //1 AARYAN V4X - Sniper Panel
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=8
 
}