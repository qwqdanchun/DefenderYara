
rule Trojan_BAT_Tnega_MB_MTB{
	meta:
		description = "Trojan:BAT/Tnega.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_03_0 = {13 0d 09 11 0d 90 0a 10 00 20 00 10 00 00 8d 90 01 01 00 00 01 90 02 06 16 20 90 01 03 4f 20 90 01 03 0c 61 20 90 01 03 43 59 6f 90 01 03 0a 13 0b 08 11 0d 16 11 0b 6f 90 01 03 0a 09 11 0d 16 20 90 01 03 05 20 90 01 03 0e 61 20 90 01 03 0d 20 90 01 03 02 59 59 6f 90 01 03 0a 13 0b 11 0b 2d 90 00 } //01 00 
		$a_01_1 = {43 6f 6e 66 75 73 65 64 42 79 41 74 74 72 69 62 75 74 65 } //01 00  ConfusedByAttribute
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_3 = {43 6c 69 70 62 6f 61 72 64 50 72 6f 78 79 } //01 00  ClipboardProxy
		$a_01_4 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //01 00  MemoryStream
		$a_01_5 = {53 65 74 54 68 72 65 61 64 45 78 65 63 75 74 69 6f 6e 53 74 61 74 65 } //01 00  SetThreadExecutionState
		$a_01_6 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //01 00  RijndaelManaged
		$a_01_7 = {47 5a 69 70 53 74 72 65 61 6d } //01 00  GZipStream
		$a_01_8 = {4e 65 74 77 6f 72 6b 43 72 65 64 65 6e 74 69 61 6c } //01 00  NetworkCredential
		$a_01_9 = {57 72 69 74 65 } //01 00  Write
		$a_01_10 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}