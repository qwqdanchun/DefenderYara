
rule Trojan_Win32_Meatyip_A{
	meta:
		description = "Trojan:Win32/Meatyip.A,SIGNATURE_TYPE_PEHSTR_EXT,12 00 11 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {0f b6 08 83 f9 30 7c 2d 83 f9 7d 7f 28 83 c1 12 0f 80 f1 00 00 00 83 f9 7d 7e 1a 83 e9 7d 0f 80 e3 00 00 00 83 c1 30 0f 80 da 00 00 00 2b cf 0f 80 d2 00 00 00 e8 90 01 03 ff 8a d0 ff 75 dc ff 75 e0 88 55 8f e8 90 01 03 ff 8a 4d 8f 88 08 6a 01 90 00 } //05 00 
		$a_01_1 = {65 00 33 00 78 00 38 00 69 00 73 00 36 00 77 00 6e 00 69 00 7b 00 32 00 76 00 33 00 3b 00 37 00 6e 00 } //01 00  e3x8is6wni{2v3;7n
		$a_01_2 = {6d 00 65 00 6d 00 62 00 65 00 72 00 } //01 00  member
		$a_01_3 = {50 00 61 00 79 00 54 00 69 00 6d 00 65 00 20 00 3a 00 } //01 00  PayTime :
		$a_01_4 = {5c 00 4d 00 61 00 63 00 72 00 6f 00 6d 00 65 00 64 00 69 00 61 00 5c 00 46 00 6c 00 61 00 73 00 68 00 20 00 50 00 6c 00 61 00 79 00 65 00 72 00 5c 00 23 00 53 00 68 00 61 00 72 00 65 00 64 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 } //00 00  \Macromedia\Flash Player\#SharedObjects
	condition:
		any of ($a_*)
 
}