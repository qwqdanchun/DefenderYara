
rule Trojan_BAT_MassLoagger_AD_MTB{
	meta:
		description = "Trojan:BAT/MassLoagger.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0f 00 00 "
		
	strings :
		$a_01_0 = {50 72 6f 74 6f 6e 56 50 4e } //1 ProtonVPN
		$a_01_1 = {42 43 52 59 50 54 5f } //1 BCRYPT_
		$a_01_2 = {48 79 70 65 72 56 } //1 HyperV
		$a_01_3 = {5f 65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 } //1 _encryptedPassword
		$a_01_4 = {5f 65 6e 63 72 79 70 74 65 64 55 73 65 72 6e 61 6d 65 } //1 _encryptedUsername
		$a_01_5 = {56 4d 57 61 72 65 } //1 VMWare
		$a_01_6 = {44 65 63 72 79 70 74 43 68 72 6f 6d 69 75 6d } //1 DecryptChromium
		$a_01_7 = {5f 4e 75 6d 62 65 72 4f 66 43 6f 72 65 73 } //1 _NumberOfCores
		$a_01_8 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 6f 00 72 00 } //1 SELECT * FROM Win32_Processor
		$a_01_9 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 43 00 6c 00 69 00 65 00 6e 00 74 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 4d 00 65 00 6e 00 75 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 } //1 SOFTWARE\Clients\StartMenuInternet
		$a_01_10 = {45 00 78 00 70 00 72 00 65 00 73 00 73 00 20 00 43 00 61 00 72 00 64 00 55 00 73 00 65 00 72 00 3a 00 } //1 Express CardUser:
		$a_01_11 = {41 00 75 00 74 00 6f 00 4c 00 6f 00 67 00 69 00 6e 00 55 00 73 00 65 00 72 00 } //1 AutoLoginUser
		$a_01_12 = {4d 00 61 00 73 00 74 00 65 00 72 00 63 00 61 00 72 00 64 00 } //1 Mastercard
		$a_01_13 = {65 00 78 00 70 00 69 00 72 00 65 00 44 00 61 00 74 00 65 00 } //1 expireDate
		$a_01_14 = {56 00 69 00 73 00 61 00 20 00 4d 00 61 00 73 00 74 00 65 00 72 00 20 00 43 00 61 00 72 00 64 00 6c 00 61 00 73 00 74 00 5f 00 6e 00 61 00 6d 00 65 00 } //1 Visa Master Cardlast_name
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1) >=15
 
}