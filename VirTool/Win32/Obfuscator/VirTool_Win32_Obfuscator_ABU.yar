
rule VirTool_Win32_Obfuscator_ABU{
	meta:
		description = "VirTool:Win32/Obfuscator.ABU,SIGNATURE_TYPE_PEHSTR_EXT,05 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {0f b6 4d 10 83 f9 00 75 02 eb 90 01 01 eb 09 8b 4d f7 03 4d fc 89 4d f7 8b 4d f7 3b 4d 0c 73 90 01 01 8a 4d 10 88 4d fb 8b 4d 08 03 4d f7 80 65 f3 90 01 01 8a 11 90 00 } //01 00 
		$a_01_1 = {88 55 ee 0f b6 4d fb 0f b6 55 ee 33 ca 88 4d fb } //00 00 
	condition:
		any of ($a_*)
 
}