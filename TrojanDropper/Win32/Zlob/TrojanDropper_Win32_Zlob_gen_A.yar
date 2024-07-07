
rule TrojanDropper_Win32_Zlob_gen_A{
	meta:
		description = "TrojanDropper:Win32/Zlob.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 07 00 00 "
		
	strings :
		$a_00_0 = {2e 65 78 65 0a 64 65 6c 20 2f 46 20 2f 51 20 69 6d 65 78 2e 62 61 74 } //1
		$a_00_1 = {69 6d 65 78 2e 62 61 74 00 } //1
		$a_00_2 = {69 6d 65 78 2e 62 61 74 20 2f 73 00 } //1 浩硥戮瑡⼠s
		$a_00_3 = {43 6f 64 65 63 5c 69 6e 73 74 61 6c 6c 2e 69 63 6f 00 } //1
		$a_02_4 = {77 69 6c 6c 90 05 03 01 20 6f 70 65 6e 90 05 03 01 20 70 61 74 68 90 05 03 01 20 74 6f 90 05 03 01 20 74 68 65 90 05 03 01 20 70 72 6f 74 65 63 74 65 64 90 05 03 01 20 66 69 6c 65 73 90 00 } //1
		$a_00_5 = {2f 4e 65 77 4d 65 64 69 61 43 6f 64 65 63 2e 6f 63 78 00 } //1
		$a_01_6 = {4e 75 6c 6c 73 6f 66 74 20 49 6e 73 74 61 6c 6c 20 53 79 73 74 65 6d } //1 Nullsoft Install System
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_02_4  & 1)*1+(#a_00_5  & 1)*1+(#a_01_6  & 1)*1) >=4
 
}