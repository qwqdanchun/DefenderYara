
rule Trojan_Win32_Mediyes_G_bit{
	meta:
		description = "Trojan:Win32/Mediyes.G!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {33 d2 bf 03 00 00 00 83 c1 01 f7 ?? 81 f9 ?? ?? ?? ?? 75 e0 90 09 0c 00 8a 82 ?? ?? ?? ?? 30 04 ?? 8d 42 01 } //1
		$a_01_1 = {00 2f 00 63 00 20 00 22 00 73 00 63 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 } //1
		$a_01_2 = {53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 6c 00 61 00 6e 00 6d 00 61 00 6e 00 77 00 6f 00 72 00 6b 00 73 00 74 00 61 00 74 00 69 00 6f 00 6e 00 5c 00 50 00 61 00 72 00 61 00 6d 00 65 00 74 00 65 00 72 00 73 00 } //1 SYSTEM\CurrentControlSet\services\lanmanworkstation\Parameters
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}