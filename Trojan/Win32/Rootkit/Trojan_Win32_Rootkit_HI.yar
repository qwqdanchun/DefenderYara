
rule Trojan_Win32_Rootkit_HI{
	meta:
		description = "Trojan:Win32/Rootkit.HI,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_03_0 = {68 08 00 22 00 ff 35 ?? ?? ?? ?? ff 15 ?? ?? ?? ?? 81 7d f4 bb a4 04 00 75 08 6a 01 58 } //1
		$a_03_1 = {6a 40 68 00 10 00 00 68 d4 01 00 00 53 57 ff 15 ?? ?? ?? ?? 8b f0 3b f3 74 5e 53 68 d0 00 00 00 } //1
		$a_03_2 = {80 7f 09 00 74 21 8b 46 64 8b 15 ?? ?? ?? ?? 8d 0c 40 8b 46 68 8b 4c ca 0c 8d 04 80 8d 04 81 8b cb 50 e8 } //1
		$a_03_3 = {eb 0f 83 25 d8 ?? ?? 10 00 b8 ?? ?? 00 10 c3 33 f6 83 4d fc ff 39 35 ?? ?? 01 10 0f 84 ?? ?? 00 00 e8 ?? ?? 00 00 8b 0d ?? ?? 01 10 6a 50 ff 35 ?? ?? 01 10 e8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=2
 
}