
rule Trojan_Win64_Bumblebee_CSC_MTB{
	meta:
		description = "Trojan:Win64/Bumblebee.CSC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {0f af c1 89 43 ?? 8b 83 ?? ?? ?? ?? 05 ?? ?? ?? ?? 01 43 ?? 8b 8b ?? ?? ?? ?? 8d 41 ?? 31 43 ?? 8d 04 4d ?? ?? ?? ?? 89 83 ?? ?? ?? ?? 48 8b 8b ?? ?? ?? ?? 8b 43 ?? 42 31 04 31 49 83 c6 ?? 8b 8b ?? ?? ?? ?? 01 4b ?? 8b 4b ?? 2b 8b ?? ?? ?? ?? 81 e9 ?? ?? ?? ?? 09 8b ?? ?? ?? ?? 49 81 fe ?? ?? ?? ?? 7c } //5
		$a_01_1 = {53 65 6e 64 44 61 74 61 } //1 SendData
		$a_01_2 = {4a 6f 71 39 37 35 } //1 Joq975
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}