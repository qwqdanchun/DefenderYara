
rule Backdoor_Win32_Coroxy_A{
	meta:
		description = "Backdoor:Win32/Coroxy.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0b 00 00 04 00 "
		
	strings :
		$a_03_0 = {b8 fc fd fe ff b9 40 00 00 00 90 01 07 2d 04 04 04 04 90 00 } //03 00 
		$a_00_1 = {3c 19 74 20 3c 23 74 1c 3c 22 74 18 3c 2c 74 14 3c 2b 74 10 3c 43 74 0c 3c 3f 74 08 3c 40 74 04 3c 18 } //01 00 
		$a_00_2 = {2a d5 8b 14 ab a2 ce 11 b1 1f 00 aa 00 53 05 03 } //01 00 
		$a_00_3 = {68 04 00 00 98 ff 75 a0 e8 9e 3a 00 00 } //01 00 
		$a_00_4 = {68 7e 66 04 80 ff 75 e8 e8 fb 1f 00 00 } //01 00 
		$a_00_5 = {68 7f 66 04 40 ff 75 fc e8 71 3d 00 00 } //01 00 
		$a_00_6 = {2d 57 69 6e 64 6f 77 53 74 79 6c 65 20 48 69 64 64 65 6e 20 2d 65 70 20 62 79 70 61 73 73 } //01 00  -WindowStyle Hidden -ep bypass
		$a_00_7 = {2f 74 6f 72 2f 73 65 72 76 65 72 2f 66 70 2f } //01 00  /tor/server/fp/
		$a_00_8 = {42 43 72 79 70 74 45 6e 63 72 79 70 74 } //01 00  BCryptEncrypt
		$a_00_9 = {6f 6e 69 6f 6e 2d 6b 65 79 } //01 00  onion-key
		$a_00_10 = {47 45 54 20 2f 74 6f 72 2f 72 65 6e 64 65 7a 76 6f 75 73 32 2f 25 73 20 48 54 54 50 2f 31 2e 30 } //00 00  GET /tor/rendezvous2/%s HTTP/1.0
		$a_00_11 = {5d 04 00 00 } //2f 52 
	condition:
		any of ($a_*)
 
}