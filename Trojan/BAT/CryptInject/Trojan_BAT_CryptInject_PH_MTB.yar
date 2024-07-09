
rule Trojan_BAT_CryptInject_PH_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.PH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {12 40 28 12 00 00 0a 26 16 13 1d 07 6f 13 00 00 0a 0a 12 00 28 10 00 00 0a 13 09 11 09 07 28 14 00 00 0a 13 09 16 13 13 2b 06 11 13 17 58 13 13 11 13 11 09 6f 13 00 00 0a 32 ef } //1
		$a_01_1 = {12 44 28 12 00 00 0a 26 16 13 21 11 05 6f 13 00 00 0a 0a 12 00 28 10 00 00 0a 13 0c 11 07 11 0b 28 14 00 00 0a 13 07 16 13 14 2b 06 11 14 17 58 13 14 11 14 11 07 6f 13 00 00 0a 32 ef } //1
		$a_03_2 = {4c 69 6d 65 5f [0-0d] 2e 65 78 65 } //1
		$a_81_3 = {56 69 64 65 6f 4c 41 4e } //1 VideoLAN
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}
rule Trojan_BAT_CryptInject_PH_MTB_2{
	meta:
		description = "Trojan:BAT/CryptInject.PH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 43 00 61 00 63 00 68 00 65 00 53 00 6e 00 6f 00 72 00 74 00 } //1 C:\CacheSnort
		$a_01_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 66 00 61 00 63 00 65 00 62 00 6f 00 6f 00 6b 00 2e 00 63 00 6f 00 6d 00 2f 00 62 00 61 00 73 00 73 00 61 00 6d 00 2e 00 68 00 65 00 73 00 68 00 61 00 6d 00 2e 00 6d 00 61 00 68 00 6d 00 6f 00 75 00 64 00 } //1 https://www.facebook.com/bassam.hesham.mahmoud
		$a_01_2 = {45 00 2d 00 4d 00 61 00 69 00 6c 00 73 00 20 00 3a 00 20 00 62 00 73 00 73 00 61 00 6d 00 32 00 30 00 31 00 32 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 2c 00 20 00 62 00 73 00 73 00 61 00 6d 00 31 00 39 00 39 00 36 00 40 00 79 00 61 00 68 00 6f 00 6f 00 2e 00 63 00 6f 00 6d 00 } //1 E-Mails : bssam2012@gmail.com, bssam1996@yahoo.com
		$a_01_3 = {5c 00 75 00 70 00 64 00 61 00 74 00 65 00 5c 00 63 00 6f 00 70 00 69 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //1 \update\copier.exe
		$a_01_4 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 72 00 61 00 77 00 2e 00 67 00 69 00 74 00 68 00 75 00 62 00 75 00 73 00 65 00 72 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2e 00 63 00 6f 00 6d 00 2f 00 62 00 73 00 73 00 61 00 6d 00 31 00 39 00 39 00 36 00 2f 00 43 00 6f 00 70 00 69 00 65 00 72 00 2f 00 6d 00 61 00 73 00 74 00 65 00 72 00 2f 00 45 00 58 00 45 00 25 00 32 00 30 00 46 00 69 00 6c 00 65 00 2f 00 43 00 6f 00 70 00 69 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //1 https://raw.githubusercontent.com/bssam1996/Copier/master/EXE%20File/Copier.exe
		$a_01_5 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 43 00 6f 00 70 00 69 00 65 00 72 00 } //1 HKEY_CURRENT_USER\SOFTWARE\Copier
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}