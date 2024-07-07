
rule Backdoor_Win32_PowerSpider_C{
	meta:
		description = "Backdoor:Win32/PowerSpider.C,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0a 00 00 "
		
	strings :
		$a_03_0 = {6c 6f 63 61 6c 69 70 3d 90 02 07 64 6e 73 33 3d 90 00 } //1
		$a_01_1 = {25 73 5c 73 63 61 6e 72 65 2a 2e 65 78 65 } //1 %s\scanre*.exe
		$a_01_2 = {49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5f 53 65 72 76 65 72 } //1 Internet Explorer_Server
		$a_01_3 = {53 63 72 65 65 6e 53 61 76 65 5f 44 61 74 61 } //1 ScreenSave_Data
		$a_01_4 = {52 65 64 4d 6f 6f 6e 0d 0a 00 } //1
		$a_02_5 = {50 61 73 73 77 6f 72 64 32 90 02 05 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 41 63 63 6f 75 6e 74 20 4d 61 6e 61 67 65 72 5c 41 63 63 6f 75 6e 74 73 5c 25 30 38 64 90 02 05 5c 61 70 70 5c 45 6e 74 65 72 4e 65 74 2e 69 6e 69 90 00 } //1
		$a_00_6 = {2e 6d 61 69 6c 2e 79 61 68 6f 6f 2e 63 6f 6d 00 73 6d 74 70 2e 25 73 } //1
		$a_01_7 = {3f 53 63 61 6e 50 77 64 } //1 ?ScanPwd
		$a_01_8 = {61 68 61 25 64 6f 6b 6f 6b 00 } //1 桡╡潤潫k
		$a_00_9 = {53 4f 46 54 57 41 52 45 5c 43 6c 61 73 73 65 73 5c 53 75 6e 6e 79 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_02_5  & 1)*1+(#a_00_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_00_9  & 1)*1) >=8
 
}