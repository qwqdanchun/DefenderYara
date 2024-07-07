
rule Trojan_BAT_Stealc_RPX_MTB{
	meta:
		description = "Trojan:BAT/Stealc.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {17 13 07 16 13 08 2b 18 02 11 06 11 08 58 91 07 11 08 91 2e 05 16 13 07 2b 0d 11 08 17 58 13 08 11 08 07 8e 69 32 e1 } //1
		$a_01_1 = {4c 00 6f 00 76 00 65 00 20 00 68 00 61 00 73 00 20 00 64 00 69 00 66 00 66 00 65 00 72 00 65 00 6e 00 74 00 20 00 74 00 79 00 70 00 65 00 73 00 } //1 Love has different types
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Trojan_BAT_Stealc_RPX_MTB_2{
	meta:
		description = "Trojan:BAT/Stealc.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {66 00 69 00 6c 00 65 00 7a 00 69 00 6c 00 6c 00 61 00 2e 00 78 00 6d 00 6c 00 } //1 filezilla.xml
		$a_01_1 = {63 00 68 00 6f 00 69 00 63 00 65 00 20 00 2f 00 43 00 20 00 59 00 20 00 2f 00 4e 00 20 00 2f 00 44 00 20 00 59 00 20 00 2f 00 54 00 20 00 33 00 20 00 26 00 20 00 44 00 65 00 6c 00 } //1 choice /C Y /N /D Y /T 3 & Del
		$a_01_2 = {31 00 31 00 32 00 32 00 31 00 32 00 31 00 31 00 31 00 30 00 30 00 30 00 32 00 30 00 2e 00 63 00 6f 00 6d 00 } //1 11221211100020.com
		$a_01_3 = {70 00 75 00 72 00 70 00 6c 00 65 00 5c 00 61 00 63 00 63 00 6f 00 75 00 6e 00 74 00 73 00 2e 00 78 00 6d 00 6c 00 } //1 purple\accounts.xml
		$a_01_4 = {45 00 78 00 6f 00 64 00 75 00 73 00 5c 00 65 00 78 00 6f 00 64 00 75 00 73 00 2e 00 77 00 61 00 6c 00 6c 00 65 00 74 00 } //1 Exodus\exodus.wallet
		$a_01_5 = {43 00 6f 00 69 00 6e 00 6f 00 6d 00 69 00 5c 00 43 00 6f 00 69 00 6e 00 6f 00 6d 00 69 00 5c 00 77 00 61 00 6c 00 6c 00 65 00 74 00 73 00 } //1 Coinomi\Coinomi\wallets
		$a_01_6 = {54 00 61 00 6b 00 65 00 53 00 68 00 6f 00 74 00 2e 00 6a 00 70 00 65 00 67 00 } //1 TakeShot.jpeg
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}