
rule Trojan_BAT_Razy_CXRM_MTB{
	meta:
		description = "Trojan:BAT/Razy.CXRM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 73 00 6f 00 66 00 74 00 2e 00 66 00 69 00 6c 00 65 00 73 00 68 00 69 00 70 00 6f 00 6f 00 2e 00 63 00 6f 00 6d 00 2f 00 66 00 6f 00 72 00 64 00 2f 00 63 00 61 00 63 00 68 00 65 00 5f 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 70 00 68 00 70 00 } //1 http://soft.fileshipoo.com/ford/cache_update.php
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 73 00 6f 00 66 00 74 00 2e 00 66 00 69 00 6c 00 65 00 73 00 68 00 69 00 70 00 6f 00 6f 00 2e 00 63 00 6f 00 6d 00 2f 00 66 00 6f 00 72 00 64 00 2f 00 73 00 75 00 62 00 6d 00 69 00 74 00 5f 00 74 00 69 00 63 00 6b 00 65 00 74 00 2e 00 70 00 68 00 70 00 } //1 http://soft.fileshipoo.com/ford/submit_ticket.php
		$a_01_2 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //1 SELECT * FROM AntivirusProduct
		$a_01_3 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 43 00 61 00 70 00 74 00 69 00 6f 00 6e 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 4f 00 70 00 65 00 72 00 61 00 74 00 69 00 6e 00 67 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //1 SELECT Caption FROM Win32_OperatingSystem
		$a_01_4 = {6d 6a 6b 5a 58 71 36 6d 57 71 79 64 31 66 42 74 54 31 75 } //1 mjkZXq6mWqyd1fBtT1u
		$a_01_5 = {7a 42 64 31 38 47 36 47 33 62 51 4b 5a 6a 61 65 49 4d 6a } //1 zBd18G6G3bQKZjaeIMj
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}