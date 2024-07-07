
rule Trojan_BAT_Redline_R_MTB{
	meta:
		description = "Trojan:BAT/Redline.R!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0d 00 00 "
		
	strings :
		$a_01_0 = {42 43 52 59 50 54 5f 41 55 54 48 45 4e 54 49 43 41 54 45 44 5f 43 49 50 48 45 52 5f 4d 4f 44 45 5f 49 4e 46 4f } //1 BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO
		$a_01_1 = {43 68 72 6f 6d 65 47 65 74 52 6f 61 6d 69 6e 67 4e 61 6d 65 } //1 ChromeGetRoamingName
		$a_01_2 = {43 68 72 6f 6d 65 47 65 74 4e 61 6d 65 } //1 ChromeGetName
		$a_01_3 = {52 6f 73 43 6f 6d 4e 61 64 7a 6f 72 } //1 RosComNadzor
		$a_01_4 = {73 64 66 39 33 34 61 73 64 } //1 sdf934asd
		$a_01_5 = {61 73 64 6b 39 33 34 35 61 73 64 } //1 asdk9345asd
		$a_01_6 = {61 64 6b 61 73 64 38 75 33 68 62 61 73 64 } //1 adkasd8u3hbasd
		$a_01_7 = {6b 6b 64 68 66 61 6b 64 61 73 64 } //1 kkdhfakdasd
		$a_01_8 = {4f 00 70 00 48 00 61 00 6e 00 64 00 6c 00 65 00 72 00 65 00 6e 00 56 00 50 00 48 00 61 00 6e 00 64 00 6c 00 65 00 72 00 4e 00 } //1 OpHandlerenVPHandlerN
		$a_01_9 = {50 00 72 00 6f 00 6c 00 64 00 43 00 68 00 61 00 72 00 6f 00 74 00 6f 00 6e 00 56 00 6f 00 6c 00 64 00 43 00 68 00 61 00 72 00 50 00 4e 00 } //1 ProldCharotonVoldCharPN
		$a_01_10 = {64 00 69 00 73 00 63 00 6f 00 72 00 64 00 } //1 discord
		$a_01_11 = {46 00 69 00 6c 00 65 00 5a 00 69 00 6c 00 6c 00 61 00 } //1 FileZilla
		$a_01_12 = {4e 00 6f 00 72 00 64 00 56 00 70 00 6e 00 } //1 NordVpn
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=13
 
}