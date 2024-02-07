
rule Trojan_Win32_Emotet_DHT_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DHT!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {83 ec 10 8b 4d 08 8b 41 10 56 8b 75 0c 57 8b fe 2b 79 0c 83 c6 fc c1 ef 0f 8b cf 69 c9 04 02 00 00 8d 8c 01 44 01 00 00 89 4d f0 } //01 00 
		$a_01_1 = {7d 00 62 00 7b 00 36 00 37 00 4b 00 42 00 30 00 6b 00 31 00 48 00 46 00 36 00 79 00 77 00 79 00 4b 00 75 00 37 00 77 00 30 00 35 00 56 00 34 00 4b 00 71 00 47 00 77 00 74 00 23 00 4b 00 43 00 } //01 00  }b{67KB0k1HF6ywyKu7w05V4KqGwt#KC
		$a_01_2 = {52 00 54 00 37 00 73 00 24 00 72 00 52 00 77 00 74 00 58 00 7e 00 6b 00 64 00 23 00 74 00 48 00 36 00 7b 00 24 00 32 00 70 00 49 00 43 00 32 00 38 00 4f 00 39 00 7d 00 66 00 } //00 00  RT7s$rRwtX~kd#tH6{$2pIC28O9}f
	condition:
		any of ($a_*)
 
}