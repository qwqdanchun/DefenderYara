
rule Trojan_Win32_Androm_SIBA_MTB{
	meta:
		description = "Trojan:Win32/Androm.SIBA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {31 04 e4 8d 83 [0-d0] 81 e0 00 00 00 00 0b 04 e4 83 c4 04 89 4d ?? 29 c9 09 c1 89 cf 8b 4d 90 1b 01 90 08 30 01 89 55 ?? 83 e2 00 0b 93 49 22 47 00 83 e6 00 09 d6 8b 55 90 1b 04 [0-d0] 31 ed 33 ab ?? ?? ?? ?? 89 e9 5d 55 83 24 e4 00 01 0c e4 [0-50] 83 ec fc [0-70] 31 c9 8f 45 ?? 0b 4d 90 1b 0a fc 57 83 24 e4 00 09 0c e4 [0-70] 83 c4 04 [0-70] 8f 45 ?? 8b 4d 90 1b 0e f3 a4 } //1
		$a_02_1 = {57 c7 04 e4 ff ff 0f 00 59 56 31 34 e4 09 0c e4 [0-d0] 83 ec fc [0-d0] 81 e1 00 00 00 00 8b 0c e4 83 c4 04 [0-d0] 53 83 24 e4 00 01 0c e4 [0-d0] 83 ec fc [0-d0] 8f 45 ?? 8b 4d 90 1b 05 8f 45 ?? 8b 45 90 1b 07 50 c7 04 e4 ?? ?? ?? ?? 52 83 24 e4 00 09 04 e4 52 83 24 e4 00 01 0c e4 [0-d0] 81 e1 00 00 00 00 8b 0c e4 83 c4 04 81 e0 00 00 00 00 8f 45 ?? 03 45 90 1b 0b 8f 83 ?? ?? ?? ?? [0-d0] c7 45 ?? 00 00 00 00 ff 75 90 1b 0f 09 0c e4 [0-d0] 81 e1 00 00 00 00 8b 0c e4 83 c4 04 8f 45 ?? 8b 45 90 1b 12 21 8b 90 1b 0d 56 83 24 e4 00 09 04 e4 [0-d0] 8f 45 ?? 8b 45 90 1b 16 89 7d ?? 89 c7 03 bb 90 1b 0d 57 8b 7d 90 1b 18 8f 83 90 1b 0d [0-d0] ff a3 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=1
 
}