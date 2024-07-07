
rule Trojan_Win32_Sanpec_gen_B{
	meta:
		description = "Trojan:Win32/Sanpec.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 0a 00 00 "
		
	strings :
		$a_03_0 = {b9 38 01 00 00 8a 10 80 f2 90 01 01 88 10 40 49 75 f5 c3 90 00 } //5
		$a_03_1 = {50 c6 44 24 90 01 01 4f c6 44 24 90 01 01 77 c6 44 24 90 01 01 34 c6 44 24 90 01 01 2e c6 44 24 90 01 01 63 c6 44 24 90 01 01 67 c6 44 24 90 01 01 69 c6 44 24 90 01 01 00 90 00 } //5
		$a_03_2 = {32 d1 88 14 30 48 75 f1 8a 16 80 f2 90 01 01 88 16 8a c2 33 d2 8a f0 8d 85 90 01 04 8a 56 01 50 53 8b fa c7 03 00 00 00 00 ff 95 90 01 04 8b c7 25 ff ff 00 00 3d 05 02 00 00 90 00 } //5
		$a_03_3 = {68 00 00 00 40 51 ff 15 90 01 02 40 00 8b f0 83 fe ff 0f 84 90 01 02 00 00 8d 54 24 18 6a 00 52 68 00 72 00 00 68 90 00 } //5
		$a_01_4 = {25 73 7e 44 46 37 32 39 32 2e 74 6d 70 } //1 %s~DF7292.tmp
		$a_01_5 = {2f 63 67 69 2d 62 69 6e 2f 43 52 65 70 6c 79 2e 63 67 69 } //1 /cgi-bin/CReply.cgi
		$a_01_6 = {2f 63 67 69 2d 62 69 6e 2f 43 6c 72 46 2e 63 67 69 } //1 /cgi-bin/ClrF.cgi
		$a_01_7 = {2f 63 67 69 2d 62 69 6e 2f 43 45 72 72 2e 63 67 69 } //1 /cgi-bin/CErr.cgi
		$a_01_8 = {25 73 25 73 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 } //1 %s%s%02X-%02X-%02X-%02X-%02X-%02X
		$a_01_9 = {25 73 2f 68 74 74 70 64 6f 63 73 2f 6d 6d 2f 25 73 43 6f 6d 4d 61 6e 64 2e 73 65 63 } //1 %s/httpdocs/mm/%sComMand.sec
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_03_2  & 1)*5+(#a_03_3  & 1)*5+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=5
 
}