
rule PWS_Win32_VB_DL{
	meta:
		description = "PWS:Win32/VB.DL,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 08 00 00 "
		
	strings :
		$a_01_0 = {42 00 65 00 67 00 69 00 6e 00 50 00 6f 00 73 00 } //1 BeginPos
		$a_01_1 = {48 00 54 00 4d 00 4c 00 62 00 4f 00 64 00 79 00 } //1 HTMLbOdy
		$a_01_2 = {73 00 6d 00 74 00 70 00 73 00 65 00 72 00 76 00 65 00 72 00 70 00 6f 00 72 00 74 00 } //1 smtpserverport
		$a_01_3 = {43 00 44 00 4f 00 2e 00 43 00 6f 00 6e 00 66 00 69 00 67 00 75 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //2 CDO.Configuration
		$a_01_4 = {45 00 6d 00 61 00 69 00 6c 00 20 00 3a 00 20 00 } //2 Email : 
		$a_01_5 = {69 00 66 00 72 00 65 00 20 00 3a 00 20 00 } //2 ifre : 
		$a_01_6 = {73 00 65 00 6e 00 64 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //2 sendpassword
		$a_01_7 = {73 00 6d 00 74 00 70 00 2e 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //3 smtp.gmail.com
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*3) >=14
 
}