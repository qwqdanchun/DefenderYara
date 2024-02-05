
rule VirTool_Win32_Obfuscator_XQ{
	meta:
		description = "VirTool:Win32/Obfuscator.XQ,SIGNATURE_TYPE_PEHSTR_EXT,ffffffff 00 02 00 1e 00 00 01 00 "
		
	strings :
		$a_03_0 = {03 49 3c 9c 80 0c 24 01 90 02 08 9d 90 00 } //01 00 
		$a_03_1 = {83 c1 28 9c 80 0c 24 01 90 02 08 9d 90 00 } //01 00 
		$a_03_2 = {8b 4e 10 9c 80 0c 24 01 90 02 08 9d 90 00 } //01 00 
		$a_03_3 = {8b 49 38 9c 80 0c 24 01 90 02 08 9d 90 00 } //01 00 
		$a_03_4 = {83 c1 28 87 d2 90 02 04 f2 f3 36 90 02 02 e9 90 00 } //01 00 
		$a_01_5 = {03 49 3c 90 90 90 9c 80 0c 24 01 } //01 00 
		$a_01_6 = {83 c1 28 90 90 90 9c 80 0c 24 01 } //01 00 
		$a_03_7 = {03 49 3c 87 d2 90 02 02 f2 f3 36 e9 90 00 } //01 00 
		$a_03_8 = {8b 49 38 87 d2 90 02 04 f2 f3 36 90 02 02 e9 90 00 } //01 00 
		$a_03_9 = {03 55 24 87 d2 90 02 04 f2 f3 36 90 02 01 e9 90 00 } //01 00 
		$a_03_10 = {8b 4e 10 87 d2 90 02 04 f2 f3 36 90 02 01 e9 90 00 } //01 00 
		$a_01_11 = {83 c1 28 90 90 90 9c 80 24 24 fe } //01 00 
		$a_03_12 = {03 49 3c 87 d2 90 02 04 f2 f3 36 90 02 02 e9 90 00 } //01 00 
		$a_01_13 = {03 49 3c 90 90 90 9c 80 24 24 fe } //01 00 
		$a_01_14 = {03 49 3c 90 90 90 87 d2 90 f2 f3 36 26 36 e9 } //01 00 
		$a_01_15 = {8b 49 38 90 90 90 87 d2 90 f2 f3 36 26 36 e9 } //01 00 
		$a_01_16 = {03 49 3c 90 90 90 90 9c 80 24 24 fe } //01 00 
		$a_01_17 = {8b 49 38 90 90 90 90 9c 80 24 24 fe } //01 00 
		$a_01_18 = {8b 4e 10 90 90 90 90 9c 80 24 24 fe } //01 00 
		$a_01_19 = {8b 4e 10 9c 80 24 24 fe 9d } //01 00 
		$a_01_20 = {8b 49 38 9c 80 24 24 fe 9d } //01 00 
		$a_01_21 = {03 49 3c 9c 80 24 24 fe 9d } //01 00 
		$a_01_22 = {83 c1 28 9c 80 24 24 fe 9d } //01 00 
		$a_03_23 = {81 ff 52 a4 bf 08 90 01 01 9c 80 24 24 fe 9d 90 00 } //01 00 
		$a_01_24 = {8b 4e 10 90 9c 80 24 24 fe 9d } //01 00 
		$a_01_25 = {83 c1 28 90 9c 80 24 24 fe } //01 00 
		$a_01_26 = {03 49 3c 90 9c 80 24 24 fe } //01 00 
		$a_01_27 = {8b 5e 0c 87 d2 90 e9 } //01 00 
		$a_01_28 = {8b 5e 0c 90 9c 80 24 24 fe 9d } //01 00 
		$a_01_29 = {b9 4c 69 62 72 87 d2 90 e9 } //00 00 
	condition:
		any of ($a_*)
 
}