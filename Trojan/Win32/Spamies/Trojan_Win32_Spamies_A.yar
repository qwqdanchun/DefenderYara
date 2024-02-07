
rule Trojan_Win32_Spamies_A{
	meta:
		description = "Trojan:Win32/Spamies.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {2f 3f 38 30 38 30 } //02 00  /?8080
		$a_01_1 = {2f 3f 38 30 26 66 69 6c 65 3d 53 65 6e 64 65 72 43 6c 69 65 6e 74 2e 63 6f 6e 66 } //02 00  /?80&file=SenderClient.conf
		$a_01_2 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 4d 6f 7a 69 6c 6c 61 2f 35 2e 30 20 28 57 69 6e 64 6f 77 73 20 4e 54 20 36 2e 31 3b 20 57 4f 57 36 34 3b 20 72 76 3a 32 31 2e 30 29 20 47 65 63 6b 6f 2f 32 30 31 30 30 31 30 31 20 46 69 72 65 66 6f 78 2f 32 31 2e 30 } //02 00  User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0
		$a_03_3 = {74 61 62 6c 65 3d 90 02 10 53 65 6e 64 47 6f 6f 67 45 6d 61 69 6c 4c 69 73 74 52 65 70 6f 72 74 90 00 } //02 00 
		$a_03_4 = {6c 6f 63 61 6c 68 6f 73 74 90 02 20 2e 69 6e 2e 75 61 90 00 } //02 00 
		$a_01_5 = {6d 61 69 6c 2e 72 75 } //02 00  mail.ru
		$a_01_6 = {4d 6f 7a 69 6c 6c 61 2f 34 2e 30 20 28 63 6f 6d 70 61 74 69 62 6c 65 3b 20 4d 53 49 45 20 36 2e 30 62 3b 20 57 69 6e 64 6f 77 73 20 4e 54 20 35 2e 30 29 } //00 00  Mozilla/4.0 (compatible; MSIE 6.0b; Windows NT 5.0)
		$a_00_7 = {80 10 00 00 d7 7c } //19 00 
	condition:
		any of ($a_*)
 
}