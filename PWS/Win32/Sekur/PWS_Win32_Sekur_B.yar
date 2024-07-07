
rule PWS_Win32_Sekur_B{
	meta:
		description = "PWS:Win32/Sekur.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {6c 6f 67 6f 6e 5f 70 61 73 73 77 6f 72 64 73 00 } //1 潬潧彮慰獳潷摲s
		$a_01_1 = {6c 00 6f 00 67 00 6f 00 6e 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 00 00 } //1
		$a_01_2 = {53 00 65 00 6b 00 75 00 72 00 4c 00 53 00 41 00 20 00 6d 00 6f 00 64 00 75 00 6c 00 65 00 00 00 } //1
		$a_01_3 = {53 00 6f 00 6d 00 65 00 20 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 73 00 20 00 74 00 6f 00 20 00 65 00 6e 00 75 00 6d 00 65 00 72 00 61 00 74 00 65 00 20 00 63 00 72 00 65 00 64 00 65 00 6e 00 74 00 69 00 61 00 6c 00 73 00 2e 00 2e 00 2e 00 00 00 } //1
		$a_01_4 = {2a 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 20 00 3a 00 } //1 * Password :
		$a_01_5 = {2a 00 20 00 52 00 6f 00 6f 00 74 00 4b 00 65 00 79 00 20 00 20 00 3a 00 } //1 * RootKey  :
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}