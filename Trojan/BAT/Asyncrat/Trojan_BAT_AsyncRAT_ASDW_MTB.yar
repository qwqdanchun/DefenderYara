
rule Trojan_BAT_AsyncRAT_ASDW_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.ASDW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 09 00 00 "
		
	strings :
		$a_03_0 = {20 c4 09 00 00 28 90 01 01 00 00 0a 00 28 90 01 01 02 00 06 16 fe 01 0a 06 2c 07 16 28 90 00 } //2
		$a_01_1 = {5b 00 43 00 41 00 50 00 53 00 4c 00 4f 00 43 00 4b 00 3a 00 20 00 4f 00 4e 00 5d 00 } //1 [CAPSLOCK: ON]
		$a_01_2 = {5b 00 53 00 68 00 69 00 66 00 74 00 5d 00 } //1 [Shift]
		$a_01_3 = {62 00 6f 00 74 00 4b 00 69 00 6c 00 6c 00 65 00 72 00 } //1 botKiller
		$a_01_4 = {53 00 65 00 72 00 76 00 65 00 72 00 20 00 50 00 69 00 6e 00 67 00 65 00 64 00 20 00 6d 00 65 00 20 00 } //1 Server Pinged me 
		$a_01_5 = {2f 00 43 00 20 00 63 00 68 00 6f 00 69 00 63 00 65 00 20 00 2f 00 43 00 20 00 59 00 20 00 2f 00 4e 00 20 00 2f 00 44 00 20 00 59 00 20 00 2f 00 54 00 20 00 31 00 20 00 26 00 20 00 44 00 65 00 6c 00 } //1 /C choice /C Y /N /D Y /T 1 & Del
		$a_01_6 = {41 00 73 00 79 00 6e 00 63 00 52 00 41 00 54 00 20 00 30 00 2e 00 34 00 } //1 AsyncRAT 0.4
		$a_01_7 = {31 00 37 00 32 00 2e 00 32 00 30 00 2e 00 31 00 30 00 2e 00 33 00 } //1 172.20.10.3
		$a_01_8 = {64 00 58 00 4e 00 70 00 62 00 6d 00 63 00 67 00 55 00 33 00 6c 00 7a 00 64 00 47 00 56 00 74 00 4f 00 77 00 70 00 31 00 63 00 32 00 6c 00 75 00 5a 00 79 00 42 00 54 00 65 00 58 00 4e 00 30 00 5a 00 57 00 30 00 75 00 52 00 47 00 6c 00 68 00 5a 00 32 00 35 00 76 00 63 00 33 00 52 00 70 00 59 00 33 00 4d 00 37 00 43 00 6e 00 56 00 7a 00 61 00 57 00 35 00 6e 00 49 00 46 00 4e 00 35 00 63 00 33 00 52 00 6c 00 62 00 } //1 dXNpbmcgU3lzdGVtOwp1c2luZyBTeXN0ZW0uRGlhZ25vc3RpY3M7CnVzaW5nIFN5c3Rlb
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=10
 
}