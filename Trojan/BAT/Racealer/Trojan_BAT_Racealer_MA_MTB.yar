
rule Trojan_BAT_Racealer_MA_MTB{
	meta:
		description = "Trojan:BAT/Racealer.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_03_0 = {13 04 11 04 7e 90 01 03 04 11 07 09 08 28 90 01 03 06 17 73 90 01 03 0a 13 05 7e 90 01 03 04 11 05 11 06 16 11 06 8e 69 28 90 01 03 06 7e 90 01 03 04 11 05 28 90 01 03 06 7e 90 01 03 04 28 90 01 03 06 13 08 7e 90 01 03 04 11 08 7e 90 01 03 04 11 04 28 90 01 03 06 28 90 01 03 06 0a de 90 00 } //01 00 
		$a_01_1 = {77 00 33 00 77 00 70 00 } //01 00  w3wp
		$a_01_2 = {62 61 73 65 36 34 42 69 6e 61 72 79 } //01 00  base64Binary
		$a_01_3 = {68 74 74 70 3a 2f 2f 77 77 77 2e 73 6d 61 72 74 61 73 73 65 6d 62 6c 79 2e 63 6f 6d } //01 00  http://www.smartassembly.com
		$a_01_4 = {47 65 74 53 65 72 76 65 72 55 52 4c } //01 00  GetServerURL
		$a_01_5 = {47 65 74 57 65 62 52 65 71 75 65 73 74 } //01 00  GetWebRequest
		$a_01_6 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_7 = {57 65 62 50 72 6f 78 79 } //01 00  WebProxy
		$a_01_8 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_9 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //01 00  RijndaelManaged
		$a_01_10 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_11 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //00 00  TransformFinalBlock
	condition:
		any of ($a_*)
 
}