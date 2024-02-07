
rule Trojan_BAT_ClipBanker_R_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.R!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 00 63 00 31 00 71 00 67 00 34 00 77 00 71 00 33 00 78 00 76 00 32 00 72 00 33 00 39 00 65 00 39 00 6a 00 65 00 76 00 61 00 66 00 33 00 70 00 66 00 33 00 72 00 71 00 73 00 63 00 36 00 66 00 74 00 33 00 76 00 74 00 36 00 67 00 35 00 64 00 68 00 61 00 } //01 00  bc1qg4wq3xv2r39e9jevaf3pf3rqsc6ft3vt6g5dha
		$a_01_1 = {45 76 69 6c 53 68 69 74 5c 42 54 43 20 57 61 6c 6c 65 74 20 43 68 61 6e 67 65 72 } //01 00  EvilShit\BTC Wallet Changer
		$a_01_2 = {5e 00 28 00 31 00 7c 00 33 00 29 00 5b 00 31 00 2d 00 39 00 41 00 2d 00 48 00 4a 00 2d 00 4e 00 50 00 2d 00 5a 00 61 00 2d 00 6b 00 6d 00 2d 00 7a 00 5d 00 7b 00 32 00 36 00 2c 00 33 00 34 00 7d 00 24 00 } //00 00  ^(1|3)[1-9A-HJ-NP-Za-km-z]{26,34}$
	condition:
		any of ($a_*)
 
}