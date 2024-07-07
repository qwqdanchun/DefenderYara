
rule Trojan_BAT_Kryptik_R_ibt{
	meta:
		description = "Trojan:BAT/Kryptik.R!ibt,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {1f 18 0c d0 09 00 00 01 28 90 01 01 00 00 0a 90 01 01 73 90 01 01 00 00 0a 06 08 60 14 04 17 8d 01 00 00 01 0d 09 16 03 a2 09 28 13 00 00 0a 2a 90 00 } //1
		$a_40_1 = {00 00 11 d0 25 00 00 01 28 2e 00 00 0a 72 ba 0d 00 70 20 14 01 00 00 14 04 17 8d 02 00 00 01 0a 06 16 03 a2 06 28 2f 00 00 0a 2a 02 } //1
		$a_08_2 = {18 5b 03 } //14848
		$a_90_3 = {04 1f 10 28 90 01 04 9c 2b 1b 07 09 03 08 18 6f 90 01 04 1f 10 28 90 01 04 06 09 06 8e 69 5d 91 61 d2 9c 08 18 58 0c 08 03 6f 90 01 04 32 b6 90 00 02 00 41 03 08 18 5b 03 08 18 6f 90 01 04 1f 10 28 90 01 04 9c 2b 22 08 18 5b 1f 10 59 0d 06 09 03 08 18 6f 90 01 04 1f 10 28 90 01 04 07 09 07 8e 69 5d 91 61 d2 9c 08 18 58 0c 08 03 6f } //6152
	condition:
		((#a_03_0  & 1)*1+(#a_40_1  & 1)*1+(#a_08_2  & 1)*14848+(#a_90_3  & 1)*6152) >=3
 
}