
rule Trojan_BAT_UrsuPow_AA{
	meta:
		description = "Trojan:BAT/UrsuPow.AA,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 20 00 2d 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 74 00 79 00 6c 00 65 00 20 00 68 00 69 00 64 00 64 00 65 00 6e 00 20 00 2d 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 22 00 26 00 7b 00 24 00 74 00 3d 00 27 00 23 00 23 00 69 00 65 00 78 00 23 00 40 00 28 00 6e 00 65 00 77 00 23 00 2d 00 23 00 6f 00 62 00 23 00 6a 00 65 00 63 00 23 00 74 00 20 00 4e 00 23 00 23 00 65 00 74 00 23 00 2e 00 57 00 23 00 65 00 62 00 23 00 43 00 6c 00 23 00 69 00 65 00 23 00 6e 00 74 00 23 00 29 00 2e 00 23 00 55 00 70 00 23 00 6c 00 6f 00 61 00 23 00 64 00 23 00 53 00 74 00 23 00 72 00 69 00 23 00 6e 00 67 00 28 00 23 00 27 00 27 00 68 00 23 00 74 00 23 00 74 00 70 } //1
		$a_01_1 = {63 00 68 00 6f 00 69 00 63 00 65 00 20 00 2f 00 43 00 20 00 59 00 20 00 2f 00 4e 00 20 00 2f 00 44 00 20 00 59 00 20 00 2f 00 54 00 20 00 33 00 20 00 26 00 20 00 44 00 65 00 6c 00 } //1 choice /C Y /N /D Y /T 3 & Del
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}