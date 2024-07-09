
rule Trojan_Win32_VBInject_S{
	meta:
		description = "Trojan:Win32/VBInject.S,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 05 00 00 "
		
	strings :
		$a_03_0 = {00 52 6a 01 6a ff 6a 20 ff 15 ?? 11 40 00 c7 45 fc ?? 00 00 00 90 09 0c 00 c7 45 fc ?? 00 00 00 8b 15 3c ?? (41|42) } //1
		$a_03_1 = {73 0c c7 85 ?? ff ff ff 00 00 00 00 eb 0c ff 15 ?? (10|11) 40 00 89 85 ?? ff ff ff 8b 45 ?? 8b 0d 20 ?? 41 00 8b 14 81 52 e8 ?? ?? ff ff } //1
		$a_03_2 = {fd ff ff 02 00 01 00 c7 45 fc ?? 00 00 00 8d 90 09 03 00 c7 85 } //1
		$a_03_3 = {81 e1 ff 00 00 00 ff 15 ?? 11 40 00 8b 55 [b4 b8 bc] 8b 4a 0c 8b ?? ?? fe ff ff 88 04 11 c7 45 fc ?? 00 00 00 e9 ?? f6 ff ff c7 45 fc ?? 00 00 00 } //5
		$a_03_4 = {c7 45 fc 03 00 00 00 c7 45 ?? 00 00 00 00 c7 45 ?? 02 00 00 00 8d 45 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 83 c4 0c c7 45 fc 04 00 00 00 68 ff 00 00 00 8b 55 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? c7 45 fc 05 00 00 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*5+(#a_03_4  & 1)*1) >=7
 
}