
rule Trojan_Win32_Emotetcrypt_JJ_MTB{
	meta:
		description = "Trojan:Win32/Emotetcrypt.JJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {03 d0 2b 15 90 01 04 03 15 90 01 04 2b 15 90 01 04 8b 45 14 0f b6 14 10 33 ca a1 90 01 04 0f af 05 90 01 04 03 45 fc 8b 15 90 01 04 0f af 15 90 01 04 2b c2 03 05 90 01 04 8b 15 90 01 04 0f af 15 90 01 04 0f af 15 90 01 04 0f af 15 90 01 04 03 c2 90 00 } //1
		$a_01_1 = {58 34 52 50 54 33 42 4d 26 77 42 59 52 4b 7a 6a 52 54 30 4e 4c 70 58 3f 23 63 41 6f 59 2a 59 56 52 6e 42 50 59 57 54 36 36 6d 31 66 70 6a 3f 36 79 53 57 30 70 4b 5f 59 32 66 55 41 58 35 24 } //1 X4RPT3BM&wBYRKzjRT0NLpX?#cAoY*YVRnBPYWT66m1fpj?6ySW0pK_Y2fUAX5$
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=1
 
}