
rule VirTool_Win32_Obfuscator_AJB{
	meta:
		description = "VirTool:Win32/Obfuscator.AJB,SIGNATURE_TYPE_PEHSTR_EXT,32 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 41 4c 4c 45 47 41 54 4f 00 } //01 00  䄀䱌䝅呁O
		$a_01_1 = {00 49 4e 53 45 52 49 4d 00 } //01 00 
		$a_01_2 = {00 5c 57 69 6e 64 77 55 70 64 61 74 65 00 } //01 00  尀楗摮啷摰瑡e
		$a_01_3 = {00 62 26 68 73 67 32 33 35 36 64 67 2f 35 36 00 } //01 00  戀栦杳㌲㘵杤㔯6
		$a_03_4 = {8b d0 8b 45 f8 0f b6 44 18 ff 33 d0 8d 45 f4 e8 90 01 04 8b 55 f4 8b c7 e8 90 01 04 83 c6 02 43 8b 45 f8 e8 90 01 04 3b d8 7e 05 bb 01 00 00 00 8b 45 fc e8 90 01 04 3b f0 7e 96 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}