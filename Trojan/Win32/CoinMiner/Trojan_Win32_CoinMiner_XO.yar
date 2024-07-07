
rule Trojan_Win32_CoinMiner_XO{
	meta:
		description = "Trojan:Win32/CoinMiner.XO,SIGNATURE_TYPE_PEHSTR,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 6d 00 61 00 69 00 6c 00 2e 00 74 00 65 00 63 00 68 00 6e 00 69 00 73 00 65 00 72 00 76 00 69 00 6e 00 63 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 2f 00 66 00 69 00 6c 00 65 00 73 00 2f 00 } //2 https://mail.techniservinc.com/resources/files/
		$a_01_1 = {4f 00 5f 00 54 00 2e 00 65 00 78 00 65 00 } //1 O_T.exe
		$a_01_2 = {4c 00 43 00 5f 00 4b 00 45 00 59 00 5f 00 4c 00 } //1 LC_KEY_L
		$a_01_3 = {4c 00 43 00 5f 00 44 00 4c 00 4c 00 5f 00 4c 00 } //1 LC_DLL_L
		$a_01_4 = {4c 00 43 00 5f 00 44 00 41 00 54 00 41 00 31 00 5f 00 4c 00 } //1 LC_DATA1_L
		$a_01_5 = {4c 00 43 00 5f 00 44 00 41 00 54 00 41 00 32 00 5f 00 4c 00 } //1 LC_DATA2_L
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}