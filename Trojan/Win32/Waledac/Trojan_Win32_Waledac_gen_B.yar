
rule Trojan_Win32_Waledac_gen_B{
	meta:
		description = "Trojan:Win32/Waledac.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_02_0 = {25 01 00 00 80 79 05 48 83 c8 fe 40 74 07 68 ?? ?? ?? ?? eb 05 68 ?? ?? ?? ?? 57 e8 ?? ?? ?? ff 8b c7 } //2
		$a_01_1 = {75 76 77 78 79 7a 00 00 2e 70 6e 67 00 00 00 00 2e 68 74 6d 00 00 00 00 46 57 44 6f 6e 65 00 } //2
		$a_01_2 = {77 6f 72 64 73 00 00 00 74 61 73 6b 00 } //1
		$a_01_3 = {52 4c 69 73 74 00 } //1 䱒獩t
		$a_01_4 = {4c 61 73 74 43 6f 6d 6d 61 6e 64 49 64 00 } //1 慌瑳潃浭湡䥤d
		$a_01_5 = {50 72 6f 6d 6f 52 65 67 00 } //1
	condition:
		((#a_02_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}