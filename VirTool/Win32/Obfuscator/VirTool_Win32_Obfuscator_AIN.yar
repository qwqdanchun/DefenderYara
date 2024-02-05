
rule VirTool_Win32_Obfuscator_AIN{
	meta:
		description = "VirTool:Win32/Obfuscator.AIN,SIGNATURE_TYPE_PEHSTR_EXT,64 00 02 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {83 e3 00 8b cb 81 c6 00 01 00 00 83 f9 40 74 07 80 36 1b 46 41 eb f4 33 c9 bb 00 00 00 00 be 00 00 00 00 8d bb 00 41 7a 00 57 33 c9 81 f9 00 00 1f 00 77 f8 } //02 00 
		$a_03_1 = {83 f9 40 60 be 00 50 4b 00 bf 00 10 51 00 b9 00 10 00 00 f3 a5 61 74 0e 33 db 80 34 1e 90 01 01 83 c6 01 83 c1 01 eb d8 90 00 } //01 00 
		$a_01_2 = {80 36 1b 46 41 eb } //01 00 
		$a_01_3 = {0c 1b b3 1b f6 d3 f6 d4 0a e3 22 c4 88 06 } //01 00 
		$a_01_4 = {33 d2 83 f9 40 74 0c 80 34 16 1b 83 c6 01 83 c1 01 eb ed } //01 00 
		$a_03_5 = {bf 00 10 51 00 90 01 01 b9 00 10 00 00 f3 a4 61 90 00 } //01 00 
		$a_01_6 = {bf 00 00 00 00 b0 90 b9 00 00 02 00 bb 00 41 7a 00 03 fb } //01 00 
		$a_01_7 = {b8 44 44 44 00 b9 44 01 00 00 60 33 f6 8d b6 34 00 54 00 } //00 00 
	condition:
		any of ($a_*)
 
}