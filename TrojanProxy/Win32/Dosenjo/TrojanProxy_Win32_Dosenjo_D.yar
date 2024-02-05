
rule TrojanProxy_Win32_Dosenjo_D{
	meta:
		description = "TrojanProxy:Win32/Dosenjo.D,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {ff ff 02 00 8b f4 6a 6e ff 15 90 01 04 3b f4 e8 90 01 04 66 89 85 90 01 02 ff ff c7 85 90 01 02 ff ff 00 00 00 00 8b f4 6a 10 8d 85 90 01 02 ff ff 50 8b 8d 90 01 02 ff ff 51 ff 15 90 00 } //02 00 
		$a_03_1 = {b8 cc cc cc cc f3 ab a0 90 01 04 88 85 90 01 02 ff ff b9 90 01 04 33 c0 8d bd 90 01 02 ff ff f3 ab 66 ab aa 8b f4 6a 00 6a 21 8d 85 90 01 02 ff ff 50 6a 00 ff 15 90 00 } //02 00 
		$a_01_2 = {3f 63 61 63 68 69 6e 67 44 65 6e 79 3d } //01 00 
		$a_01_3 = {83 c0 0d 99 b9 1a 00 00 00 f7 f9 8a 44 15 } //01 00 
		$a_01_4 = {31 31 30 3a 54 43 50 3a 2a 3a 45 6e 61 62 6c 65 64 3a 73 76 63 68 6f 73 74 } //01 00 
		$a_01_5 = {00 53 76 63 68 6f 73 74 49 44 00 } //01 00 
		$a_01_6 = {5c 53 76 65 72 6a 6e 79 79 43 62 79 76 70 6c 5c 46 67 6e 61 71 6e 65 71 43 65 62 73 76 79 72 5c 54 79 62 6f 6e 79 79 6c 42 63 72 61 43 62 65 67 66 5c 59 76 66 67 5c } //00 00 
	condition:
		any of ($a_*)
 
}