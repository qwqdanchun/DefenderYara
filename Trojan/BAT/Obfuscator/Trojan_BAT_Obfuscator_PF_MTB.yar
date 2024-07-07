
rule Trojan_BAT_Obfuscator_PF_MTB{
	meta:
		description = "Trojan:BAT/Obfuscator.PF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 "
		
	strings :
		$a_02_0 = {7e 6f 00 00 04 7e 6d 00 00 04 28 90 01 02 00 06 7e 6f 00 00 04 16 6a 28 90 01 02 00 06 06 16 28 90 01 02 00 06 25 26 13 10 20 e8 03 00 00 13 11 11 11 8d 0b 00 00 01 13 13 11 10 11 13 16 11 11 28 90 01 02 00 06 25 26 13 12 11 12 16 31 19 90 00 } //1
		$a_00_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_00_2 = {47 65 74 44 72 69 76 65 73 } //1 GetDrives
		$a_00_3 = {47 65 74 50 68 79 73 69 63 61 6c 41 64 64 72 65 73 73 } //1 GetPhysicalAddress
		$a_00_4 = {47 65 74 41 6c 6c 4e 65 74 77 6f 72 6b 49 6e 74 65 72 66 61 63 65 73 } //1 GetAllNetworkInterfaces
		$a_00_5 = {67 65 74 5f 78 6c 73 } //1 get_xls
		$a_00_6 = {67 65 74 5f 64 6f 63 } //1 get_doc
		$a_00_7 = {67 65 74 5f 6f 64 63 } //1 get_odc
		$a_00_8 = {53 65 72 69 61 6c 55 53 42 } //1 SerialUSB
		$a_00_9 = {46 69 6c 65 44 6f 63 54 65 6d 70 } //1 FileDocTemp
		$a_00_10 = {55 53 42 53 65 72 69 61 6c 4e 75 6d 62 65 72 } //1 USBSerialNumber
		$a_00_11 = {50 69 6e 67 52 65 70 6c 79 } //1 PingReply
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1) >=12
 
}