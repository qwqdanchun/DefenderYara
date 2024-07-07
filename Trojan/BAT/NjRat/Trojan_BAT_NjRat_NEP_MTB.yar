
rule Trojan_BAT_NjRat_NEP_MTB{
	meta:
		description = "Trojan:BAT/NjRat.NEP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,22 00 22 00 09 00 00 "
		
	strings :
		$a_01_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 43 00 20 00 59 00 20 00 2f 00 4e 00 20 00 2f 00 44 00 20 00 59 00 20 00 2f 00 54 00 20 00 31 00 20 00 26 00 20 00 44 00 65 00 6c 00 } //5 cmd.exe /C Y /N /D Y /T 1 & Del
		$a_01_1 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //5 SELECT * FROM AntivirusProduct
		$a_01_2 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 43 00 6f 00 69 00 6e 00 6f 00 6d 00 69 00 5c 00 57 00 61 00 6c 00 6c 00 65 00 74 00 } //5 C:\Program Files\Coinomi\Wallet
		$a_01_3 = {45 00 78 00 6f 00 64 00 75 00 73 00 5f 00 } //4 Exodus_
		$a_01_4 = {4d 00 65 00 74 00 61 00 5f 00 46 00 69 00 72 00 65 00 66 00 78 00 5f 00 } //4 Meta_Firefx_
		$a_01_5 = {67 65 74 5f 53 65 72 76 69 63 65 50 61 63 6b } //3 get_ServicePack
		$a_01_6 = {53 68 65 6c 6c } //3 Shell
		$a_01_7 = {4b 65 79 6c 6f 67 67 65 72 } //3 Keylogger
		$a_01_8 = {47 65 74 50 72 6f 63 65 73 73 42 79 49 64 } //2 GetProcessById
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*4+(#a_01_4  & 1)*4+(#a_01_5  & 1)*3+(#a_01_6  & 1)*3+(#a_01_7  & 1)*3+(#a_01_8  & 1)*2) >=34
 
}