
rule Trojan_Win32_IcedId_PA_MTB{
	meta:
		description = "Trojan:Win32/IcedId.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b 3b 39 05 ?? ?? ?? ?? 75 40 3b ea 73 1e 89 0d ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 0f af ca 69 c9 55 69 00 00 66 89 0d ?? ?? ?? ?? eb 07 66 8b 0d ?? ?? ?? ?? 39 05 ?? ?? ?? ?? 76 16 0f b7 05 ?? ?? ?? ?? 29 05 ?? ?? ?? ?? eb 07 66 8b 0d ?? ?? ?? ?? 81 3d ?? ?? ?? ?? 56 5e 04 00 75 02 2b f5 81 c7 a0 c9 ce 01 89 3b ba 02 00 00 00 39 35 ?? ?? ?? ?? 76 06 29 15 ?? ?? ?? ?? 8b 44 24 14 83 c3 04 83 6c 24 10 01 0f 85 } //1
		$a_03_1 = {8b 2a 83 c1 fa 03 cf a3 ?? ?? ?? 00 0f b7 c1 05 eb 00 00 00 66 89 0d ?? ?? ?? 00 3d 21 1b 00 00 7e ?? 8b 0d ?? ?? ?? 00 69 c7 58 18 00 00 2b c8 8d 0c 4b 66 89 0d ?? ?? ?? 00 0f b7 c1 81 c5 ac 00 56 01 05 eb 00 00 00 89 2a 3d 21 1b 00 00 7e ?? 8b 0d ?? ?? ?? 00 8b c1 2b c6 83 e8 1d 69 c0 58 18 00 00 2b c8 8d 0c 4b 66 89 0d ?? ?? ?? 00 a1 ?? ?? ?? 00 83 c2 04 2b 05 ?? ?? ?? 00 83 c0 06 89 54 24 18 ff 4c 24 1c 0f b7 f8 0f 85 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}