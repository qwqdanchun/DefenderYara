
rule TrojanSpy_BAT_CoinSteal_H_bit{
	meta:
		description = "TrojanSpy:BAT/CoinSteal.H!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {31 00 47 00 47 00 72 00 7a 00 58 00 71 00 4d 00 50 00 46 00 48 00 65 00 70 00 58 00 41 00 72 00 62 00 36 00 62 00 36 00 4b 00 66 00 73 00 34 00 79 00 48 00 36 00 47 00 45 00 74 00 76 00 69 00 63 00 59 00 } //01 00  1GGrzXqMPFHepXArb6b6Kfs4yH6GEtvicY
		$a_01_1 = {76 00 61 00 6e 00 64 00 65 00 72 00 62 00 69 00 6c 00 74 00 } //01 00  vanderbilt
		$a_01_2 = {42 00 69 00 74 00 63 00 6f 00 69 00 6e 00 20 00 57 00 61 00 6c 00 6c 00 65 00 74 00 } //01 00  Bitcoin Wallet
		$a_01_3 = {5e 00 5b 00 31 00 33 00 5d 00 5b 00 61 00 2d 00 6b 00 6d 00 2d 00 7a 00 41 00 2d 00 48 00 4a 00 2d 00 4e 00 50 00 2d 00 5a 00 31 00 2d 00 39 00 5d 00 7b 00 32 00 35 00 2c 00 33 00 34 00 7d 00 24 00 } //00 00  ^[13][a-km-zA-HJ-NP-Z1-9]{25,34}$
	condition:
		any of ($a_*)
 
}