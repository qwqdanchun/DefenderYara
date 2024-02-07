
rule Trojan_BAT_ClipBanker_JJ_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.JJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 10 00 00 01 00 "
		
	strings :
		$a_81_0 = {79 64 69 73 6b } //01 00  ydisk
		$a_81_1 = {73 74 65 61 6d } //01 00  steam
		$a_81_2 = {6d 6f 6e 65 72 6f } //01 00  monero
		$a_81_3 = {62 69 74 63 6f 69 6e } //01 00  bitcoin
		$a_81_4 = {61 75 74 6f 72 75 6e } //01 00  autorun
		$a_81_5 = {50 72 6f 63 65 73 73 53 74 61 72 74 49 6e 66 6f } //01 00  ProcessStartInfo
		$a_81_6 = {44 69 72 65 63 74 6f 72 79 49 6e 66 6f } //01 00  DirectoryInfo
		$a_81_7 = {70 61 79 65 65 72 } //01 00  payeer
		$a_81_8 = {79 6d 6f 6e 65 79 } //01 00  ymoney
		$a_01_9 = {73 00 74 00 65 00 61 00 6d 00 63 00 6f 00 6d 00 6d 00 75 00 6e 00 69 00 74 00 79 00 2e 00 63 00 6f 00 6d 00 2f 00 74 00 72 00 61 00 64 00 65 00 6f 00 66 00 66 00 65 00 72 00 2f 00 6e 00 65 00 77 00 } //01 00  steamcommunity.com/tradeoffer/new
		$a_01_10 = {71 00 69 00 77 00 69 00 2e 00 6d 00 65 00 } //01 00  qiwi.me
		$a_01_11 = {64 00 6f 00 6e 00 61 00 74 00 69 00 6f 00 6e 00 61 00 6c 00 65 00 72 00 74 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 } //01 00  donationalerts.com/r
		$a_01_12 = {79 00 61 00 64 00 69 00 2e 00 73 00 6b 00 2f 00 64 00 } //01 00  yadi.sk/d
		$a_01_13 = {44 00 41 00 4c 00 45 00 52 00 54 00 53 00 } //01 00  DALERTS
		$a_01_14 = {52 00 49 00 50 00 50 00 4c 00 45 00 } //01 00  RIPPLE
		$a_01_15 = {4c 00 69 00 74 00 65 00 43 00 6f 00 69 00 6e 00 } //00 00  LiteCoin
	condition:
		any of ($a_*)
 
}