
rule Trojan_Win32_Ursnif_B{
	meta:
		description = "Trojan:Win32/Ursnif.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_00_0 = {5c 5c 33 5c 2e 34 31 5c 2e 33 34 44 4c 4f 70 65 72 61 74 69 6e 67 53 79 6b 33 34 35 36 62 62 } //1 \\3\.41\.34DLOperatingSyk3456bb
		$a_00_1 = {4c 00 6e 00 30 00 33 00 71 00 34 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 53 00 65 00 72 00 76 00 65 00 72 00 } //1 Ln03q4Windows Server
		$a_00_2 = {44 00 69 00 72 00 65 00 63 00 74 00 33 00 44 00 20 00 39 00 20 00 52 00 75 00 6e 00 74 00 69 00 6d 00 65 00 } //1 Direct3D 9 Runtime
		$a_00_3 = {44 00 33 00 44 00 39 00 2e 00 64 00 6c 00 6c 00 } //1 D3D9.dll
		$a_03_4 = {bf 4b 08 00 00 8d 35 ?? ?? ?? ?? 89 66 18 89 6e 40 89 5e 20 85 c0 74 05 e8 ?? ?? ff ff c2 0c 00 89 45 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_03_4  & 1)*1) >=4
 
}