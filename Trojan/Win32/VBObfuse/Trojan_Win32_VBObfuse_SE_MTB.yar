
rule Trojan_Win32_VBObfuse_SE_MTB{
	meta:
		description = "Trojan:Win32/VBObfuse.SE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {50 00 61 00 69 00 6f 00 50 00 4d 00 51 00 4f 00 45 00 72 00 52 00 35 00 37 00 6f 00 36 00 66 00 64 00 79 00 74 00 56 00 38 00 62 00 47 00 65 00 41 00 32 00 32 00 31 00 } //1 PaioPMQOErR57o6fdytV8bGeA221
		$a_01_1 = {48 00 43 00 78 00 72 00 4a 00 35 00 4c 00 6a 00 50 00 54 00 64 00 6e 00 74 00 49 00 51 00 75 00 70 00 67 00 66 00 6c 00 54 00 58 00 32 00 47 00 59 00 47 00 6a 00 31 00 34 00 30 00 } //1 HCxrJ5LjPTdntIQupgflTX2GYGj140
		$a_01_2 = {63 00 63 00 70 00 78 00 43 00 58 00 6a 00 41 00 76 00 75 00 78 00 4f 00 6e 00 71 00 39 00 51 00 56 00 61 00 38 00 79 00 34 00 38 00 64 00 79 00 78 00 76 00 58 00 59 00 77 00 34 00 35 00 74 00 42 00 38 00 30 00 } //1 ccpxCXjAvuxOnq9QVa8y48dyxvXYw45tB80
		$a_01_3 = {61 00 52 00 64 00 6b 00 62 00 5a 00 42 00 36 00 69 00 79 00 70 00 6f 00 75 00 58 00 76 00 70 00 4a 00 7a 00 52 00 36 00 4a 00 43 00 4f 00 63 00 51 00 6c 00 48 00 75 00 69 00 31 00 32 00 38 00 } //1 aRdkbZB6iypouXvpJzR6JCOcQlHui128
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}