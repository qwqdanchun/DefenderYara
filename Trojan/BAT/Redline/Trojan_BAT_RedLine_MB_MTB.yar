
rule Trojan_BAT_RedLine_MB_MTB{
	meta:
		description = "Trojan:BAT/RedLine.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {0b 16 0c 16 0c 2b 3e 03 08 03 8e 69 5d 17 58 17 59 03 08 03 8e 69 5d 91 07 08 07 8e 69 5d 91 61 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_RedLine_MB_MTB_2{
	meta:
		description = "Trojan:BAT/RedLine.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_03_0 = {07 08 1f 20 6f 90 01 03 0a 6f 90 01 03 0a 07 08 1f 10 6f 90 01 03 0a 6f 90 01 03 0a 73 90 01 03 0a 0d 09 07 6f 90 01 03 0a 17 73 90 01 03 0a 13 04 11 04 06 16 06 8e 69 6f 90 01 03 0a 11 04 6f 90 01 03 0a de 0f 11 04 2c 0a 1c 2c f9 11 04 6f 90 01 03 0a dc 90 00 } //01 00 
		$a_01_1 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_3 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_5 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_01_6 = {54 6f 41 72 72 61 79 } //01 00  ToArray
		$a_01_7 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00  TransformFinalBlock
		$a_01_8 = {47 65 74 54 65 6d 70 50 61 74 68 } //00 00  GetTempPath
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_RedLine_MB_MTB_3{
	meta:
		description = "Trojan:BAT/RedLine.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1c 00 08 00 00 05 00 "
		
	strings :
		$a_03_0 = {3a 00 2f 00 2f 00 74 00 72 00 61 00 6e 00 73 00 66 00 65 00 72 00 2e 00 73 00 68 00 2f 00 67 00 65 00 74 00 2f 00 90 02 0f 2f 00 45 00 78 00 65 00 63 00 75 00 74 00 65 00 42 00 79 00 74 00 65 00 73 00 2e 00 74 00 78 00 74 00 90 00 } //05 00 
		$a_01_1 = {57 95 02 34 09 02 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 34 00 00 00 60 1b 00 00 2b 00 00 00 f7 36 00 00 02 00 00 00 3e 00 00 00 10 } //05 00 
		$a_01_2 = {67 00 43 00 79 00 58 00 46 00 43 00 4a 00 54 00 50 00 7a 00 51 00 70 00 6d 00 43 00 58 00 6a 00 76 00 57 00 6b 00 77 00 6b 00 41 00 4b 00 6a 00 7a 00 76 00 74 00 79 00 68 00 4b 00 5a 00 76 00 65 00 7a 00 66 00 50 00 76 00 4f 00 51 00 72 00 4d 00 } //05 00  gCyXFCJTPzQpmCXjvWkwkAKjzvtyhKZvezfPvOQrM
		$a_01_3 = {76 00 50 00 42 00 48 00 42 00 4b 00 6c 00 75 00 67 00 61 00 4d 00 6e 00 50 00 54 00 56 00 75 00 63 00 45 00 77 00 4a 00 79 00 70 00 74 00 6b 00 49 00 4b 00 43 00 42 00 } //05 00  vPBHBKlugaMnPTVucEwJyptkIKCB
		$a_01_4 = {4a 00 79 00 7a 00 55 00 48 00 57 00 66 00 51 00 43 00 59 00 49 00 70 00 49 00 50 00 4a 00 72 00 6c 00 6c 00 78 00 44 00 51 00 4c 00 61 00 53 00 69 00 76 00 52 00 45 00 4d 00 4a 00 57 00 43 00 58 00 4c 00 63 00 57 00 49 00 52 00 63 00 63 00 } //01 00  JyzUHWfQCYIpIPJrllxDQLaSivREMJWCXLcWIRcc
		$a_01_5 = {44 65 63 6f 64 69 6e 67 42 79 74 65 73 } //01 00  DecodingBytes
		$a_01_6 = {47 65 74 54 65 6d 70 50 61 74 68 } //01 00  GetTempPath
		$a_01_7 = {57 00 69 00 6e 00 44 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //00 00  WinDll.exe
	condition:
		any of ($a_*)
 
}