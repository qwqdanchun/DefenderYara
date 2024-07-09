
rule Trojan_Win32_Merdirt_A{
	meta:
		description = "Trojan:Win32/Merdirt.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {65 00 78 00 65 00 63 00 75 00 74 00 65 00 00 00 48 00 44 00 44 00 53 00 65 00 72 00 69 00 61 00 6c 00 4e 00 75 00 6d 00 62 00 65 00 72 00 00 00 43 00 3a 00 5c 00 00 00 } //1
		$a_00_1 = {72 00 65 00 64 00 69 00 72 00 20 00 44 00 79 00 6e 00 61 00 6d 00 69 00 63 00 20 00 4c 00 69 00 6e 00 6b 00 20 00 4c 00 69 00 62 00 72 00 61 00 72 00 79 00 00 00 } //1
		$a_03_2 = {33 c0 50 50 ff 75 68 ff 75 58 50 8b 45 54 ff 70 e0 ff 15 ?? ?? ?? ?? c6 45 fc 13 8d 4d 68 e8 ?? ?? ?? ?? c6 45 fc 02 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}