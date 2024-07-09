
rule Trojan_Win32_APosT_SIB_MTB{
	meta:
		description = "Trojan:Win32/APosT.SIB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {8b 55 08 03 95 ?? ?? ?? ?? 0f b6 02 33 c1 8b 4d 08 03 8d 90 1b 00 88 01 90 18 8b 85 90 1b 00 83 c0 ?? 89 85 90 1b 00 8b 8d 90 1b 00 3b 4d 0c 0f 83 ?? ?? ?? ?? 8b 95 ?? ?? ?? ?? 83 c2 ?? 89 95 90 1b 08 8b 85 90 1b 08 33 d2 b9 ?? ?? ?? ?? f7 f1 89 95 90 1b 08 8b 95 90 1b 08 0f b6 84 15 ?? ?? ?? ?? 03 85 ?? ?? ?? ?? 33 d2 b9 ?? ?? ?? ?? f7 f1 89 95 90 1b 10 8b 95 90 1b 10 8a 84 15 90 1b 0f 88 85 ?? ?? ?? ?? 8b 8d 90 1b 10 8b 95 90 1b 08 8a 84 15 90 1b 0f 88 84 0d 90 1b 0f 8b 8d 90 1b 08 8a 95 90 1b 15 88 94 0d 90 1b 0f 8b 85 90 1b 08 0f b6 8c 05 90 1b 0f 8b 95 90 1b 10 0f b6 84 15 90 1b 0f 03 c8 81 e1 ?? ?? ?? ?? 79 ?? 49 81 c9 ?? ?? ?? ?? 41 0f b6 8c 0d 90 1b 0f 8b 55 08 } //1
		$a_02_1 = {33 d2 f7 75 14 0f be 84 15 ?? ?? ?? ?? 03 85 ?? ?? ?? ?? 8b 95 ?? ?? ?? ?? 0f b6 8c 15 ?? ?? ?? ?? 03 c1 33 d2 b9 ?? ?? ?? ?? f7 f1 89 95 90 1b 01 8b 95 90 1b 01 0f b6 84 15 90 1b 03 8b 8d 90 1b 02 0f b6 94 0d 90 1b 03 33 d0 89 95 ?? ?? ?? ?? 8b 85 90 1b 02 8a 8d 90 1b 0a 88 8c 05 90 1b 03 0f b6 95 90 1b 0a 8b 85 90 1b 01 0f b6 8c 05 90 1b 03 33 ca 89 8d ?? ?? ?? ?? 8b 95 90 1b 01 8a 85 90 1b 11 88 84 15 90 1b 03 0f b6 8d 90 1b 11 8b 95 90 1b 02 0f b6 84 15 90 1b 03 33 c1 8b 8d 90 1b 02 88 84 0d 90 1b 03 90 18 8b 8d 90 1b 02 83 c1 ?? 89 8d 90 1b 02 81 bd 90 1b 02 ?? ?? ?? ?? 0f 84 ?? ?? ?? ?? 8b 85 90 1b 02 33 d2 f7 75 14 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}