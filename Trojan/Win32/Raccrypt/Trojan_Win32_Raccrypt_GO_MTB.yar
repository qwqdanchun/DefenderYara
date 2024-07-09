
rule Trojan_Win32_Raccrypt_GO_MTB{
	meta:
		description = "Trojan:Win32/Raccrypt.GO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {9f 99 a2 25 c7 85 ?? ?? ?? ?? e9 a9 1a 16 c7 85 ?? ?? ?? ?? eb 24 54 26 c7 85 ?? ?? ?? ?? 15 4f 12 30 c7 85 ?? ?? ?? ?? 35 2a da 14 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Raccrypt_GO_MTB_2{
	meta:
		description = "Trojan:Win32/Raccrypt.GO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {6a 65 58 6a 32 66 a3 ?? ?? ?? ?? 58 6a 33 66 a3 ?? ?? ?? ?? 58 6a 65 66 a3 ?? ?? ?? ?? 58 6a 64 66 a3 ?? ?? ?? ?? 58 6a 6e 66 a3 ?? ?? ?? ?? 58 6a 6c 66 a3 ?? ?? ?? ?? 58 6a 6b 66 a3 ?? ?? ?? ?? 33 c0 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Raccrypt_GO_MTB_3{
	meta:
		description = "Trojan:Win32/Raccrypt.GO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {b4 02 d7 cb [0-06] c7 05 ?? ?? ?? ?? ff ff ff ff 89 [0-03] e8 ?? ?? ?? ?? 8b ca e8 ?? ?? ?? ?? 8b [0-03] 29 [0-03] 8d [0-03] e8 [0-0f] 0f 85 90 0a 5a 00 8b [0-03] 8b ?? c1 [0-08] c7 05 } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Raccrypt_GO_MTB_4{
	meta:
		description = "Trojan:Win32/Raccrypt.GO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_02_0 = {3b 2d 0b 00 8b 0d ?? ?? ?? ?? 88 04 ?? 75 } //1
		$a_02_1 = {25 bb 52 c0 5d 8b [0-02] 8b [0-04] c1 ?? 05 03 [0-04] c1 [0-01] 04 03 [0-06] 33 ?? 33 } //1
		$a_02_2 = {25 bb 52 c0 5d 8b [0-02] 8b [0-04] c1 ?? 04 03 [0-06] 33 [0-08] c1 [0-01] 05 03 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=2
 
}
rule Trojan_Win32_Raccrypt_GO_MTB_5{
	meta:
		description = "Trojan:Win32/Raccrypt.GO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_02_0 = {bb 9b c6 a0 04 8b [0-14] c1 ?? 04 03 [0-1e] c1 ?? 05 03 [0-0f] 33 [0-04] 33 } //1
		$a_02_1 = {bb 9b c6 a0 04 8b [0-14] c1 ?? 05 03 [0-1e] c1 ?? 04 03 [0-0f] 33 [0-04] 33 } //1
		$a_02_2 = {bb 9b c6 a0 04 8b [0-14] c1 ?? 05 89 [0-1e] c1 ?? 04 03 [0-0f] 33 [0-04] 33 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=1
 
}
rule Trojan_Win32_Raccrypt_GO_MTB_6{
	meta:
		description = "Trojan:Win32/Raccrypt.GO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_02_0 = {19 36 6b ff 90 0a 32 00 c1 ?? 04 03 [0-28] c1 ?? 05 [0-0f] c7 05 [0-14] 90 17 02 01 01 31 33 } //1
		$a_02_1 = {19 36 6b ff 90 0a 32 00 c1 ?? 05 03 [0-28] c1 ?? 04 [0-0f] c7 05 [0-14] 90 17 02 01 01 31 33 } //1
		$a_02_2 = {19 36 6b ff 90 0a 32 00 c1 ?? 05 [0-28] c1 ?? 04 03 [0-0f] c7 05 [0-14] 90 17 02 01 01 31 33 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=1
 
}
rule Trojan_Win32_Raccrypt_GO_MTB_7{
	meta:
		description = "Trojan:Win32/Raccrypt.GO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 05 00 00 "
		
	strings :
		$a_02_0 = {33 c6 05 cf ?? ?? ?? 32 c6 05 ?? ?? ?? ?? 2e c6 05 ?? ?? ?? ?? 64 c6 05 ?? ?? ?? ?? 6c c6 05 ?? ?? ?? ?? 6c [0-06] c6 05 ?? ?? ?? ?? 6b c6 05 ?? ?? ?? ?? 65 c6 05 ?? ?? ?? ?? 72 c6 05 ?? ?? ?? ?? 6e c6 05 ?? ?? ?? ?? 65 c6 05 ?? ?? ?? ?? 6c ff 15 } //1
		$a_02_1 = {33 c6 05 c9 ?? ?? ?? 32 c6 05 ?? ?? ?? ?? 2e c6 05 ?? ?? ?? ?? 64 c6 05 ?? ?? ?? ?? 6c c6 05 ?? ?? ?? ?? 6c [0-06] c6 05 ?? ?? ?? ?? 6b c6 05 ?? ?? ?? ?? 65 c6 05 ?? ?? ?? ?? 72 c6 05 ?? ?? ?? ?? 6e c6 05 ?? ?? ?? ?? 65 c6 05 ?? ?? ?? ?? 6c ff 15 } //1
		$a_02_2 = {33 c6 05 a9 ?? ?? ?? 32 c6 05 ?? ?? ?? ?? 2e c6 05 ?? ?? ?? ?? 64 c6 05 ?? ?? ?? ?? 6c c6 05 ?? ?? ?? ?? 6c [0-06] c6 05 ?? ?? ?? ?? 6b c6 05 ?? ?? ?? ?? 65 c6 05 ?? ?? ?? ?? 72 c6 05 ?? ?? ?? ?? 6e c6 05 ?? ?? ?? ?? 65 c6 05 ?? ?? ?? ?? 6c ff 15 } //1
		$a_00_3 = {8b 45 0c 01 45 fc 8b 45 fc 31 45 08 c9 c2 08 00 81 00 e1 34 ef c6 c3 } //1
		$a_00_4 = {8b 45 0c 01 45 fc 8b 45 fc 31 45 08 8b 45 08 c9 c2 08 00 81 00 e1 34 ef c6 c3 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=1
 
}