
rule VirTool_BAT_Injector_HB{
	meta:
		description = "VirTool:BAT/Injector.HB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {5f 69 6e 6a 65 63 74 69 6f 6e 50 61 74 68 } //1 _injectionPath
		$a_01_1 = {4d 6f 6e 69 74 6f 72 49 6e 6a 65 63 74 69 6f 6e 00 } //1
		$a_03_2 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 43 00 72 00 65 00 64 00 65 00 6e 00 74 00 69 00 61 00 6c 00 73 00 5c 00 ?? ?? 73 00 6d 00 74 00 70 00 63 00 6f 00 2e 00 65 00 78 00 65 00 ?? ?? 73 00 63 00 73 00 69 00 73 00 76 00 2e 00 65 00 78 00 65 00 } //1
		$a_03_3 = {75 00 6e 00 63 00 68 00 2e 00 65 00 78 00 65 00 ?? ?? 75 00 66 00 65 00 71 00 73 00 65 00 64 00 75 00 71 00 67 00 } //1
		$a_01_4 = {63 00 68 00 65 00 6c 00 74 00 6f 00 63 00 68 00 65 00 6c 00 } //1 cheltochel
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}