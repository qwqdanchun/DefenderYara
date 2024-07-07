
rule Trojan_Win32_Danmec_M{
	meta:
		description = "Trojan:Win32/Danmec.M,SIGNATURE_TYPE_PEHSTR_EXT,ffffff92 01 ffffff91 01 19 00 00 "
		
	strings :
		$a_02_0 = {33 c9 85 c0 7e 09 80 34 31 1b 41 3b c8 7c f7 90 05 03 03 5f 5e c9 c3 e9 90 00 } //100
		$a_00_1 = {33 c9 85 ff 7e 19 6a 02 5a 4a 8a c2 d0 e0 85 d2 88 44 15 fc 75 f3 80 34 31 1b 41 3b cf 7c e7 5f 5e c9 c3 e9 } //100
		$a_00_2 = {47 45 54 20 25 73 25 73 20 48 54 54 50 2f 31 2e 31 } //100 GET %s%s HTTP/1.1
		$a_00_3 = {4d 69 63 72 6f 73 6f 66 74 20 41 53 50 49 20 4d 61 6e 61 67 65 72 } //100 Microsoft ASPI Manager
		$a_00_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 53 66 74 } //100 Software\Microsoft\Sft
		$a_00_5 = {32 31 36 2e 34 30 2e 32 30 34 2e 31 30 36 3a 38 30 } //1 216.40.204.106:80
		$a_00_6 = {32 31 36 2e 36 39 2e 31 36 34 2e 31 37 33 3a 38 30 } //1 216.69.164.173:80
		$a_00_7 = {32 30 38 2e 31 30 39 2e 32 35 2e 36 34 3a 38 30 } //1 208.109.25.64:80
		$a_00_8 = {32 30 38 2e 31 30 39 2e 35 30 2e 31 31 37 3a 38 30 } //1 208.109.50.117:80
		$a_00_9 = {32 30 38 2e 31 30 39 2e 35 31 2e 31 34 30 3a 38 30 } //1 208.109.51.140:80
		$a_00_10 = {32 30 38 2e 31 30 39 2e 31 32 34 2e 31 33 37 3a 38 30 } //1 208.109.124.137:80
		$a_00_11 = {32 30 38 2e 31 30 39 2e 31 39 38 2e 31 32 31 3a 38 30 } //1 208.109.198.121:80
		$a_00_12 = {37 34 2e 35 32 2e 37 32 2e 35 38 3a 38 30 } //1 74.52.72.58:80
		$a_00_13 = {36 37 2e 31 38 2e 31 35 36 2e 31 37 38 3a 38 30 } //1 67.18.156.178:80
		$a_00_14 = {36 37 2e 31 39 2e 39 2e 31 38 36 3a 38 30 } //1 67.19.9.186:80
		$a_00_15 = {36 37 2e 31 38 2e 31 35 31 2e 32 30 32 3a 38 30 } //1 67.18.151.202:80
		$a_00_16 = {77 69 6e 2e 69 6e 69 } //1 win.ini
		$a_00_17 = {70 68 69 73 68 69 6e 67 } //1 phishing
		$a_00_18 = {53 4d 54 50 53 65 72 76 65 72 } //1 SMTPServer
		$a_00_19 = {53 4d 54 50 41 55 54 48 } //1 SMTPAUTH
		$a_00_20 = {4d 41 49 4c 20 46 52 4f 4d 3a } //1 MAIL FROM:
		$a_00_21 = {52 43 50 54 20 54 4f 3a } //1 RCPT TO:
		$a_00_22 = {4d 53 20 49 45 20 46 54 50 20 50 61 73 73 77 6f 72 64 73 } //1 MS IE FTP Passwords
		$a_00_23 = {49 4e 45 54 43 4f 4d 4d 20 53 65 72 76 65 72 20 50 61 73 73 77 6f 72 64 73 } //1 INETCOMM Server Passwords
		$a_00_24 = {4f 75 74 6c 6f 6f 6b 20 41 63 63 6f 75 6e 74 20 4d 61 6e 61 67 65 72 20 50 61 73 73 77 6f 72 64 73 } //1 Outlook Account Manager Passwords
	condition:
		((#a_02_0  & 1)*100+(#a_00_1  & 1)*100+(#a_00_2  & 1)*100+(#a_00_3  & 1)*100+(#a_00_4  & 1)*100+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_00_18  & 1)*1+(#a_00_19  & 1)*1+(#a_00_20  & 1)*1+(#a_00_21  & 1)*1+(#a_00_22  & 1)*1+(#a_00_23  & 1)*1+(#a_00_24  & 1)*1) >=401
 
}