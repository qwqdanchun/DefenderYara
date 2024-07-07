
rule VirTool_Win32_Obfuscator_AQZ{
	meta:
		description = "VirTool:Win32/Obfuscator.AQZ,SIGNATURE_TYPE_PEHSTR_EXT,06 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {36 34 66 66 90 04 01 03 67 2d 7a 33 35 33 30 30 30 90 02 04 30 90 02 04 30 90 02 04 30 90 02 04 30 90 02 04 35 90 02 04 38 90 02 04 38 90 02 04 62 90 02 04 34 90 02 04 30 90 02 04 30 90 02 04 63 90 02 04 38 90 02 04 62 90 02 04 34 90 02 04 38 90 02 04 30 90 02 04 63 90 02 04 38 90 02 04 62 90 02 04 31 90 02 04 31 90 02 04 38 90 02 04 62 90 02 04 34 90 02 04 31 90 02 04 33 90 02 04 30 90 02 04 36 90 02 04 61 90 02 04 30 90 02 04 32 90 02 04 38 90 02 04 62 90 02 04 37 90 02 04 64 90 02 04 30 90 02 04 38 90 02 04 35 90 02 04 37 90 02 04 35 90 02 04 30 90 02 04 65 90 02 04 38 90 00 } //1
		$a_02_1 = {65 38 30 64 30 32 90 02 08 30 90 02 02 30 90 02 02 33 90 02 02 33 90 02 02 63 90 02 02 30 90 02 02 63 90 02 02 33 90 02 02 38 90 02 02 62 90 02 02 35 90 02 02 34 90 02 02 32 90 02 02 34 90 02 02 30 90 02 02 63 90 02 02 38 90 02 02 62 90 02 02 34 90 02 02 63 90 02 02 32 90 02 02 34 90 02 02 30 90 02 02 34 90 02 02 38 90 02 02 62 90 02 02 63 90 02 02 32 90 02 02 34 90 02 02 61 90 02 02 35 90 02 02 37 90 02 02 38 90 02 02 62 90 02 02 66 90 02 02 39 90 02 02 38 90 02 02 35 90 02 02 63 90 02 02 30 90 02 02 37 90 02 02 34 90 02 02 31 90 02 02 32 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=1
 
}