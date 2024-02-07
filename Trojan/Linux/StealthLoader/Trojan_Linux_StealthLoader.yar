
rule Trojan_Linux_StealthLoader{
	meta:
		description = "Trojan:Linux/StealthLoader,SIGNATURE_TYPE_PEHSTR,28 00 28 00 08 00 00 10 00 "
		
	strings :
		$a_01_0 = {2b 00 32 00 72 00 70 00 42 00 4a 00 30 00 54 00 59 00 62 00 35 00 70 00 32 00 79 00 44 00 45 00 4f 00 37 00 39 00 33 00 67 00 55 00 55 00 4c 00 34 00 71 00 43 00 52 00 55 00 76 00 67 00 6b 00 39 00 67 00 32 00 70 00 65 00 67 00 47 00 61 00 68 00 37 00 49 00 3d 00 } //10 00  +2rpBJ0TYb5p2yDEO793gUUL4qCRUvgk9g2pegGah7I=
		$a_01_1 = {4f 00 67 00 59 00 65 00 4d 00 51 00 51 00 69 00 5a 00 69 00 49 00 61 00 4f 00 57 00 6b 00 54 00 2f 00 46 00 6e 00 50 00 78 00 67 00 3d 00 3d 00 } //08 00  OgYeMQQiZiIaOWkT/FnPxg==
		$a_01_2 = {74 00 65 00 6d 00 70 00 30 00 } //08 00  temp0
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //04 00  CreateDecryptor
		$a_01_4 = {57 69 6e 64 6f 77 73 20 55 70 64 61 74 65 20 52 75 6e 6e 65 72 } //02 00  Windows Update Runner
		$a_01_5 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 45 78 } //01 00  VirtualProtectEx
		$a_01_6 = {47 65 74 50 72 6f 63 41 64 64 72 65 73 73 } //01 00  GetProcAddress
		$a_01_7 = {4c 6f 61 64 4c 69 62 72 61 72 79 } //00 00  LoadLibrary
	condition:
		any of ($a_*)
 
}