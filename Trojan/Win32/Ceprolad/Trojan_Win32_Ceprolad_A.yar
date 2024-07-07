
rule Trojan_Win32_Ceprolad_A{
	meta:
		description = "Trojan:Win32/Ceprolad.A,SIGNATURE_TYPE_CMDHSTR_EXT,70 00 70 00 0d 00 00 "
		
	strings :
		$a_00_0 = {63 00 65 00 72 00 74 00 75 00 74 00 69 00 6c 00 } //100 certutil
		$a_00_1 = {2d 00 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 } //1 -urlcache
		$a_00_2 = {2f 00 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 } //1 /urlcache
		$a_00_3 = {20 00 2d 00 66 00 20 00 } //1  -f 
		$a_00_4 = {20 00 2f 00 66 00 20 00 } //1  /f 
		$a_00_5 = {20 00 66 00 74 00 70 00 3a 00 2f 00 2f 00 } //10  ftp://
		$a_02_6 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 20 00 90 02 20 63 00 6f 00 6e 00 66 00 69 00 67 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //-50
		$a_00_7 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 72 00 6c 00 2e 00 70 00 6b 00 69 00 2e 00 76 00 61 00 2e 00 67 00 6f 00 76 00 2f 00 } //-50 http://crl.pki.va.gov/
		$a_00_8 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 68 00 74 00 74 00 70 00 2e 00 66 00 70 00 6b 00 69 00 2e 00 67 00 6f 00 76 00 2f 00 } //-50 http://http.fpki.gov/
		$a_00_9 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 63 00 72 00 6c 00 2e 00 70 00 6b 00 69 00 2e 00 76 00 61 00 2e 00 67 00 6f 00 76 00 2f 00 } //-50 https://crl.pki.va.gov/
		$a_00_10 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 68 00 74 00 74 00 70 00 2e 00 66 00 70 00 6b 00 69 00 2e 00 67 00 6f 00 76 00 2f 00 } //-50 https://http.fpki.gov/
		$a_00_11 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 73 00 73 00 36 00 34 00 2e 00 63 00 6f 00 6d 00 } //-50 https://ss64.com
		$a_02_12 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 2f 00 61 00 62 00 62 00 90 02 ff 2e 00 63 00 72 00 6c 00 90 00 } //-50
	condition:
		((#a_00_0  & 1)*100+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*10+(#a_02_6  & 1)*-50+(#a_00_7  & 1)*-50+(#a_00_8  & 1)*-50+(#a_00_9  & 1)*-50+(#a_00_10  & 1)*-50+(#a_00_11  & 1)*-50+(#a_02_12  & 1)*-50) >=112
 
}
rule Trojan_Win32_Ceprolad_A_2{
	meta:
		description = "Trojan:Win32/Ceprolad.A,SIGNATURE_TYPE_CMDHSTR_EXT,70 00 70 00 12 00 00 "
		
	strings :
		$a_00_0 = {63 00 65 00 72 00 74 00 75 00 74 00 69 00 6c 00 } //100 certutil
		$a_00_1 = {2d 00 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 } //1 -urlcache
		$a_00_2 = {2f 00 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 } //1 /urlcache
		$a_00_3 = {20 00 2d 00 66 00 20 00 } //1  -f 
		$a_00_4 = {20 00 2f 00 66 00 20 00 } //1  /f 
		$a_00_5 = {2d 00 70 00 69 00 6e 00 67 00 } //2 -ping
		$a_00_6 = {2f 00 70 00 69 00 6e 00 67 00 } //2 /ping
		$a_00_7 = {20 00 68 00 74 00 74 00 70 00 } //10  http
		$a_02_8 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 20 00 90 02 20 63 00 6f 00 6e 00 66 00 69 00 67 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //-50
		$a_00_9 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 72 00 6c 00 2e 00 70 00 6b 00 69 00 2e 00 76 00 61 00 2e 00 67 00 6f 00 76 00 2f 00 } //-50 http://crl.pki.va.gov/
		$a_00_10 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 68 00 74 00 74 00 70 00 2e 00 66 00 70 00 6b 00 69 00 2e 00 67 00 6f 00 76 00 2f 00 } //-50 http://http.fpki.gov/
		$a_00_11 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 63 00 72 00 6c 00 2e 00 70 00 6b 00 69 00 2e 00 76 00 61 00 2e 00 67 00 6f 00 76 00 2f 00 } //-50 https://crl.pki.va.gov/
		$a_00_12 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 68 00 74 00 74 00 70 00 2e 00 66 00 70 00 6b 00 69 00 2e 00 67 00 6f 00 76 00 2f 00 } //-50 https://http.fpki.gov/
		$a_00_13 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 79 00 6c 00 61 00 6e 00 63 00 65 00 6f 00 6e 00 70 00 72 00 65 00 6d 00 2e 00 68 00 71 00 } //-50 http://cylanceonprem.hq
		$a_00_14 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 72 00 6c 00 2e 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 63 00 6f 00 6d 00 } //-50 http://crl.microsoft.com
		$a_00_15 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 73 00 73 00 36 00 34 00 2e 00 63 00 6f 00 6d 00 } //-50 https://ss64.com
		$a_02_16 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 2f 00 61 00 62 00 62 00 90 02 ff 2e 00 63 00 72 00 6c 00 90 00 } //-50
		$a_02_17 = {61 00 62 00 62 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 62 00 62 00 90 02 ff 2e 00 63 00 72 00 6c 00 90 00 } //-50
	condition:
		((#a_00_0  & 1)*100+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*2+(#a_00_6  & 1)*2+(#a_00_7  & 1)*10+(#a_02_8  & 1)*-50+(#a_00_9  & 1)*-50+(#a_00_10  & 1)*-50+(#a_00_11  & 1)*-50+(#a_00_12  & 1)*-50+(#a_00_13  & 1)*-50+(#a_00_14  & 1)*-50+(#a_00_15  & 1)*-50+(#a_02_16  & 1)*-50+(#a_02_17  & 1)*-50) >=112
 
}
rule Trojan_Win32_Ceprolad_A_3{
	meta:
		description = "Trojan:Win32/Ceprolad.A,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 17 00 00 "
		
	strings :
		$a_02_0 = {2d 00 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 20 00 90 02 20 73 00 70 00 6c 00 69 00 74 00 20 00 90 02 20 2d 00 66 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //1
		$a_02_1 = {2d 00 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 20 00 90 02 20 73 00 70 00 6c 00 69 00 74 00 20 00 90 02 20 2f 00 66 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //1
		$a_02_2 = {2f 00 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 20 00 90 02 20 73 00 70 00 6c 00 69 00 74 00 20 00 90 02 20 2d 00 66 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //1
		$a_02_3 = {2f 00 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 20 00 90 02 20 73 00 70 00 6c 00 69 00 74 00 20 00 90 02 20 2f 00 66 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //1
		$a_02_4 = {2d 00 73 00 70 00 6c 00 69 00 74 00 20 00 90 02 20 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 20 00 90 02 20 2d 00 66 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //1
		$a_02_5 = {2d 00 73 00 70 00 6c 00 69 00 74 00 20 00 90 02 20 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 20 00 90 02 20 2f 00 66 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //1
		$a_02_6 = {2f 00 73 00 70 00 6c 00 69 00 74 00 20 00 90 02 20 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 20 00 90 02 20 2d 00 66 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //1
		$a_02_7 = {2f 00 73 00 70 00 6c 00 69 00 74 00 20 00 90 02 20 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 20 00 90 02 20 2f 00 66 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //1
		$a_02_8 = {63 00 65 00 72 00 74 00 75 00 74 00 69 00 6c 00 90 02 20 20 00 2f 00 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 20 00 90 02 20 2f 00 66 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //1
		$a_02_9 = {63 00 65 00 72 00 74 00 75 00 74 00 69 00 6c 00 90 02 20 20 00 2f 00 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 20 00 90 02 20 2d 00 66 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //1
		$a_02_10 = {63 00 65 00 72 00 74 00 75 00 74 00 69 00 6c 00 90 02 20 20 00 2d 00 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 20 00 90 02 20 2d 00 66 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //1
		$a_02_11 = {63 00 65 00 72 00 74 00 75 00 74 00 69 00 6c 00 90 02 20 20 00 2d 00 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 20 00 90 02 20 2f 00 66 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //1
		$a_02_12 = {63 00 65 00 72 00 74 00 75 00 74 00 69 00 6c 00 90 02 20 20 00 2d 00 70 00 69 00 6e 00 67 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //1
		$a_02_13 = {63 00 65 00 72 00 74 00 75 00 74 00 69 00 6c 00 90 02 20 20 00 2f 00 70 00 69 00 6e 00 67 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //1
		$a_02_14 = {63 00 65 00 72 00 74 00 75 00 74 00 69 00 6c 00 90 02 20 20 00 90 22 01 02 2d 2f 75 00 72 00 90 01 02 63 00 61 00 63 00 68 00 65 00 20 00 90 02 20 90 23 01 02 2d 2f 66 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //1
		$a_02_15 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 20 00 90 02 20 63 00 6f 00 6e 00 66 00 69 00 67 00 20 00 90 02 20 68 00 74 00 74 00 70 00 90 00 } //-5
		$a_00_16 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 72 00 6c 00 2e 00 70 00 6b 00 69 00 2e 00 76 00 61 00 2e 00 67 00 6f 00 76 00 2f 00 } //-50 http://crl.pki.va.gov/
		$a_00_17 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 68 00 74 00 74 00 70 00 2e 00 66 00 70 00 6b 00 69 00 2e 00 67 00 6f 00 76 00 2f 00 } //-50 http://http.fpki.gov/
		$a_00_18 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 63 00 72 00 6c 00 2e 00 70 00 6b 00 69 00 2e 00 76 00 61 00 2e 00 67 00 6f 00 76 00 2f 00 } //-50 https://crl.pki.va.gov/
		$a_00_19 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 68 00 74 00 74 00 70 00 2e 00 66 00 70 00 6b 00 69 00 2e 00 67 00 6f 00 76 00 2f 00 } //-50 https://http.fpki.gov/
		$a_00_20 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 72 00 6c 00 2e 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 63 00 6f 00 6d 00 2f 00 } //-50 http://crl.microsoft.com/
		$a_02_21 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 2f 00 61 00 62 00 62 00 90 02 ff 2e 00 63 00 72 00 6c 00 90 00 } //-50
		$a_02_22 = {61 00 62 00 62 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 62 00 62 00 90 02 ff 2e 00 63 00 72 00 6c 00 90 00 } //-50
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1+(#a_02_6  & 1)*1+(#a_02_7  & 1)*1+(#a_02_8  & 1)*1+(#a_02_9  & 1)*1+(#a_02_10  & 1)*1+(#a_02_11  & 1)*1+(#a_02_12  & 1)*1+(#a_02_13  & 1)*1+(#a_02_14  & 1)*1+(#a_02_15  & 1)*-5+(#a_00_16  & 1)*-50+(#a_00_17  & 1)*-50+(#a_00_18  & 1)*-50+(#a_00_19  & 1)*-50+(#a_00_20  & 1)*-50+(#a_02_21  & 1)*-50+(#a_02_22  & 1)*-50) >=1
 
}