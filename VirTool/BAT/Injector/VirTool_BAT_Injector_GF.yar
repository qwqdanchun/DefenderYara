
rule VirTool_BAT_Injector_GF{
	meta:
		description = "VirTool:BAT/Injector.GF,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 05 00 "
		
	strings :
		$a_01_0 = {4c 61 79 73 4f 72 65 2e 65 78 65 00 } //01 00 
		$a_01_1 = {16 2d 64 20 c8 33 97 78 20 10 76 1b 7a 25 2c 45 61 25 2b 55 19 5e 16 2d ef 45 03 00 00 00 3d 00 00 00 02 00 00 00 d6 ff ff ff 2b 3b 2b 3e 7b 0d 00 00 04 2b 3a } //01 00 
		$a_01_2 = {20 13 a5 24 ac 20 db 93 80 f3 61 25 38 81 01 00 00 1f 0d 5e 45 0d 00 00 00 5d 00 00 00 de 00 00 00 c1 00 00 00 b3 ff ff ff 0c 01 00 00 ae 00 00 00 35 00 00 00 20 01 00 00 91 00 00 00 43 01 00 00 05 00 00 00 f9 00 00 00 73 00 00 00 38 3e 01 00 00 1d 39 0b 01 00 00 38 3c 01 00 00 2c 08 20 72 7c c4 98 25 2b } //01 00 
		$a_01_3 = {16 2d 05 19 25 2c 2e 5e 45 03 00 00 00 d9 ff ff ff 02 00 00 00 1f 00 00 00 2b 1d 2b 1f 80 15 00 00 04 16 2d cd 2b 18 20 56 c9 a7 14 25 2c cd 5a 20 c1 18 72 69 } //00 00 
		$a_00_4 = {ba 24 00 00 00 00 } //20 00 
	condition:
		any of ($a_*)
 
}