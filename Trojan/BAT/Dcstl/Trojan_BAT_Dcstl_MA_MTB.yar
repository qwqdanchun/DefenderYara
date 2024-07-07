
rule Trojan_BAT_Dcstl_MA_MTB{
	meta:
		description = "Trojan:BAT/Dcstl.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 09 00 00 "
		
	strings :
		$a_01_0 = {0a 00 73 29 00 00 0a 0b 07 72 25 02 00 70 02 6f 2a 00 00 0a 00 06 72 35 02 00 70 72 2a 03 00 70 07 6f 2b 00 00 0a 26 00 de 10 } //5
		$a_03_1 = {73 75 70 65 72 73 65 78 5f 90 02 85 2e 65 78 65 90 00 } //3
		$a_01_2 = {3a 00 2f 00 2f 00 69 00 63 00 61 00 6e 00 68 00 61 00 7a 00 69 00 70 00 2e 00 63 00 6f 00 6d 00 } //2 ://icanhazip.com
		$a_01_3 = {47 65 74 43 50 55 49 44 } //2 GetCPUID
		$a_01_4 = {47 65 74 47 75 69 64 } //2 GetGuid
		$a_01_5 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 43 00 72 00 79 00 70 00 74 00 6f 00 67 00 72 00 61 00 70 00 68 00 79 00 } //2 SOFTWARE\Microsoft\Cryptography
		$a_01_6 = {47 65 74 4d 61 63 41 64 64 72 65 73 73 } //2 GetMacAddress
		$a_01_7 = {47 65 74 4d 61 63 68 69 6e 65 47 75 69 64 } //2 GetMachineGuid
		$a_01_8 = {53 65 6e 64 4d 65 73 73 61 67 65 54 6f 44 69 73 63 6f 72 64 } //2 SendMessageToDiscord
	condition:
		((#a_01_0  & 1)*5+(#a_03_1  & 1)*3+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*2) >=22
 
}