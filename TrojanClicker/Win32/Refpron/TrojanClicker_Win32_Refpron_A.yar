
rule TrojanClicker_Win32_Refpron_A{
	meta:
		description = "TrojanClicker:Win32/Refpron.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {52 00 3a 00 4d 00 79 00 46 00 69 00 72 00 65 00 43 00 6c 00 69 00 63 00 6b 00 } //2 R:MyFireClick
		$a_01_1 = {61 00 64 00 6c 00 69 00 6e 00 6b 00 00 00 00 00 0a 00 00 00 63 00 6c 00 69 00 63 00 6b 00 00 00 0c 00 00 00 69 00 73 00 68 00 69 00 74 00 73 00 } //2
		$a_01_2 = {73 00 75 00 62 00 74 00 79 00 70 00 65 00 00 00 0c 00 00 00 69 00 6d 00 67 00 73 00 72 00 63 00 00 00 00 00 0a 00 00 00 61 00 68 00 72 00 65 00 66 00 } //2
		$a_01_3 = {00 00 6e 00 72 00 6e 00 64 00 66 00 6f 00 72 00 63 00 74 00 72 00 32 00 00 00 } //2
		$a_01_4 = {00 00 6f 00 62 00 6a 00 4c 00 69 00 6e 00 6b 00 20 00 69 00 73 00 20 00 6e 00 6f 00 74 00 68 00 69 00 6e 00 67 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1) >=5
 
}