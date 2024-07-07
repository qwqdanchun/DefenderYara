
rule Ransom_Win32_Rapowsom_B{
	meta:
		description = "Ransom:Win32/Rapowsom.B,SIGNATURE_TYPE_CMDHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //1 powershell.exe
		$a_00_1 = {2d 00 65 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 70 00 6f 00 6c 00 69 00 63 00 79 00 20 00 62 00 79 00 70 00 61 00 73 00 73 00 } //1 -executionpolicy bypass
		$a_00_2 = {2d 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 74 00 79 00 6c 00 65 00 20 00 68 00 69 00 64 00 64 00 65 00 6e 00 } //1 -windowstyle hidden
		$a_02_3 = {2d 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 90 02 0a 69 00 65 00 78 00 90 00 } //1
		$a_02_4 = {28 00 28 00 5b 00 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 69 00 6f 00 2e 00 66 00 69 00 6c 00 65 00 5d 00 3a 00 3a 00 72 00 65 00 61 00 64 00 61 00 6c 00 6c 00 74 00 65 00 78 00 74 00 28 00 27 00 90 02 02 3a 00 5c 00 75 00 73 00 65 00 72 00 73 00 5c 00 90 02 ff 2e 00 74 00 6d 00 70 00 27 00 29 00 29 00 2e 00 72 00 65 00 70 00 6c 00 61 00 63 00 65 00 28 00 27 00 21 00 27 00 2c 00 27 00 27 00 29 00 29 00 3b 00 90 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1) >=5
 
}