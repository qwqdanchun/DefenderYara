
rule Trojan_Win32_CryptBot_CCHB_MTB{
	meta:
		description = "Trojan:Win32/CryptBot.CCHB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 "
		
	strings :
		$a_01_0 = {47 00 6f 00 6f 00 67 00 6c 00 65 00 5c 00 43 00 68 00 72 00 6f 00 6d 00 65 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 } //1 Google\Chrome\User Data
		$a_01_1 = {42 00 72 00 61 00 76 00 65 00 2d 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 } //1 Brave-Browser\User Data
		$a_01_2 = {26 00 20 00 74 00 69 00 6d 00 65 00 6f 00 75 00 74 00 20 00 34 00 20 00 26 00 20 00 64 00 65 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 71 00 } //1 & timeout 4 & del /f /q
		$a_01_3 = {5c 00 5f 00 46 00 69 00 6c 00 65 00 73 00 5c 00 5f 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 2e 00 74 00 78 00 74 00 } //1 \_Files\_Information.txt
		$a_01_4 = {5c 00 66 00 69 00 6c 00 65 00 73 00 5f 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 5f 00 69 00 6e 00 66 00 6f 00 2e 00 74 00 78 00 74 00 } //1 \files_\system_info.txt
		$a_01_5 = {5c 00 66 00 69 00 6c 00 65 00 73 00 5f 00 5c 00 73 00 63 00 72 00 65 00 65 00 6e 00 73 00 68 00 6f 00 74 00 } //1 \files_\screenshot
		$a_01_6 = {77 00 61 00 6c 00 6c 00 65 00 74 00 2e 00 64 00 61 00 74 00 } //1 wallet.dat
		$a_01_7 = {5c 00 5f 00 46 00 69 00 6c 00 65 00 73 00 5c 00 5f 00 57 00 61 00 6c 00 6c 00 65 00 74 00 } //1 \_Files\_Wallet
		$a_01_8 = {5c 00 5f 00 46 00 69 00 6c 00 65 00 73 00 5c 00 5f 00 43 00 68 00 72 00 6f 00 6d 00 65 00 } //1 \_Files\_Chrome
		$a_01_9 = {5c 00 5f 00 46 00 69 00 6c 00 65 00 73 00 5c 00 5f 00 4f 00 70 00 65 00 72 00 61 00 } //1 \_Files\_Opera
		$a_01_10 = {5c 00 5f 00 46 00 69 00 6c 00 65 00 73 00 5c 00 5f 00 42 00 72 00 61 00 76 00 65 00 } //1 \_Files\_Brave
		$a_01_11 = {5c 00 5f 00 46 00 69 00 6c 00 65 00 73 00 5c 00 5f 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 } //1 \_Files\_Firefox
		$a_01_12 = {5c 00 5f 00 46 00 69 00 6c 00 65 00 73 00 5c 00 42 00 69 00 6e 00 61 00 6e 00 63 00 65 00 } //1 \_Files\Binance
		$a_01_13 = {5c 00 66 00 69 00 6c 00 65 00 73 00 5f 00 5c 00 63 00 72 00 79 00 70 00 74 00 6f 00 63 00 75 00 72 00 72 00 65 00 6e 00 63 00 79 00 } //1 \files_\cryptocurrency
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=14
 
}