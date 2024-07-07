
rule VirTool_Win32_Injector_AR{
	meta:
		description = "VirTool:Win32/Injector.AR,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 05 00 00 "
		
	strings :
		$a_03_0 = {03 42 24 89 45 90 09 06 00 8b 55 90 01 01 8b 45 08 90 00 } //1
		$a_03_1 = {03 51 24 89 55 90 09 06 00 8b 4d 90 01 01 8b 55 08 90 00 } //1
		$a_03_2 = {03 51 24 89 55 90 09 09 00 8b 8d 90 01 01 ff ff ff 8b 55 08 90 00 } //1
		$a_03_3 = {6a 07 6a 0e 68 90 09 07 00 90 02 03 8d 90 17 03 05 05 08 4d 90 01 01 51 45 90 01 01 50 8d 90 01 01 ff ff ff 51 90 00 } //10
		$a_00_4 = {43 00 6f 00 72 00 65 00 20 00 54 00 65 00 63 00 68 00 6e 00 6f 00 6c 00 6f 00 67 00 69 00 65 00 73 00 20 00 43 00 6f 00 6e 00 73 00 75 00 6c 00 74 00 69 00 6e 00 67 00 2c 00 20 00 4c 00 4c 00 43 00 } //-100 Core Technologies Consulting, LLC
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*10+(#a_00_4  & 1)*-100) >=11
 
}