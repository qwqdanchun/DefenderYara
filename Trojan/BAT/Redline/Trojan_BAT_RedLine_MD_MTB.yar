
rule Trojan_BAT_RedLine_MD_MTB{
	meta:
		description = "Trojan:BAT/RedLine.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 02 8e 69 1b 59 8d 90 01 01 00 00 01 0b 02 1b 07 16 02 8e 69 1b 59 28 90 01 01 00 00 0a 00 07 16 14 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_RedLine_MD_MTB_2{
	meta:
		description = "Trojan:BAT/RedLine.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_03_0 = {0b 06 07 16 1a 6f 90 01 03 0a 26 07 16 28 90 01 03 0a 0c 06 16 73 90 01 03 0a 0d 08 8d 26 00 00 01 13 04 28 90 01 03 06 28 90 01 03 06 39 46 00 00 00 26 20 02 00 00 00 38 1d 00 00 00 09 11 04 16 08 28 90 01 03 06 26 38 26 00 00 00 20 02 00 00 00 fe 0e 06 00 fe 90 00 } //1
		$a_01_1 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_01_2 = {44 65 63 6f 6d 70 72 65 73 73 } //1 Decompress
		$a_01_3 = {47 65 74 54 65 6d 70 50 61 74 68 } //1 GetTempPath
		$a_01_4 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_01_5 = {47 5a 69 70 53 74 72 65 61 6d } //1 GZipStream
		$a_01_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_7 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
		$a_01_8 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}
rule Trojan_BAT_RedLine_MD_MTB_3{
	meta:
		description = "Trojan:BAT/RedLine.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,20 00 20 00 07 00 00 "
		
	strings :
		$a_03_0 = {26 72 21 02 00 70 0b 72 63 02 00 70 72 7f 02 00 70 07 28 8d 00 00 0a 0c 28 90 01 03 0a 6f 90 01 03 0a 08 6f 90 01 03 0a 17 0d de 05 26 16 0d de 90 00 } //20
		$a_01_1 = {3a 00 2f 00 2f 00 61 00 70 00 69 00 2e 00 69 00 70 00 2e 00 73 00 62 00 2f 00 69 00 70 00 } //2 ://api.ip.sb/ip
		$a_01_2 = {5c 00 44 00 69 00 73 00 63 00 6f 00 72 00 64 00 5c 00 4c 00 6f 00 63 00 61 00 6c 00 20 00 53 00 74 00 6f 00 72 00 61 00 67 00 65 00 5c 00 6c 00 65 00 76 00 65 00 6c 00 64 00 62 00 } //2 \Discord\Local Storage\leveldb
		$a_01_3 = {5c 00 54 00 65 00 45 00 6e 00 76 00 69 00 72 00 6f 00 6e 00 6d 00 65 00 6e 00 74 00 6c 00 65 00 67 00 72 00 61 00 45 00 6e 00 76 00 69 00 72 00 6f 00 6e 00 6d 00 65 00 6e 00 74 00 6d 00 20 00 44 00 45 00 6e 00 76 00 69 00 72 00 6f 00 6e 00 6d 00 65 00 6e 00 74 00 65 00 73 00 6b 00 74 00 6f 00 45 00 6e 00 76 00 69 00 72 00 6f 00 6e 00 6d 00 65 00 6e 00 74 00 70 00 5c 00 74 00 64 00 45 00 6e 00 76 00 69 00 72 00 6f 00 6e 00 6d 00 65 00 6e 00 74 00 61 00 74 00 61 00 } //2 \TeEnvironmentlegraEnvironmentm DEnvironmentesktoEnvironmentp\tdEnvironmentata
		$a_01_4 = {2a 00 77 00 61 00 6c 00 6c 00 65 00 74 00 2a 00 } //2 *wallet*
		$a_01_5 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 55 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 } //2 SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall
		$a_01_6 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //2 shell\open\command
	condition:
		((#a_03_0  & 1)*20+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2) >=32
 
}