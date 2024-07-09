
rule Trojan_Win32_Cefyns_B{
	meta:
		description = "Trojan:Win32/Cefyns.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 "
		
	strings :
		$a_00_0 = {c6 06 2f 46 c6 06 3f 46 c6 06 6b 46 c6 06 65 } //2
		$a_00_1 = {c6 06 2f 46 c6 06 77 46 c6 06 77 46 c6 06 77 } //2
		$a_02_2 = {2e c6 44 24 ?? 65 c6 44 24 ?? 78 } //2
		$a_03_3 = {67 65 74 5f 75 70 64 61 74 65 [0-01] 2e 70 68 70 3f 75 69 64 3d } //2
		$a_01_4 = {3f 6b 65 79 77 6f 72 64 3d 25 73 26 47 6f 3d 47 6f } //2 ?keyword=%s&Go=Go
		$a_01_5 = {6c 6e 74 6f 70 } //1 lntop
		$a_01_6 = {00 61 6c 74 63 6d 64 33 32 } //1
		$a_01_7 = {26 6c 69 64 3d } //1 &lid=
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_02_2  & 1)*2+(#a_03_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=6
 
}