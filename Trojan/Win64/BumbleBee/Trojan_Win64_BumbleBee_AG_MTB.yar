
rule Trojan_Win64_BumbleBee_AG_MTB{
	meta:
		description = "Trojan:Win64/BumbleBee.AG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {6f 46 57 6b 52 54 46 77 6a 6d } //02 00  oFWkRTFwjm
		$a_01_1 = {61 6e 74 20 62 65 61 72 69 6e 67 } //02 00  ant bearing
		$a_01_2 = {72 61 6e 73 6f 6d 20 74 72 65 61 63 68 65 72 6f 75 73 } //02 00  ransom treacherous
		$a_01_3 = {53 77 69 74 63 68 54 6f 46 69 62 65 72 } //00 00  SwitchToFiber
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_BumbleBee_AG_MTB_2{
	meta:
		description = "Trojan:Win64/BumbleBee.AG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {4d 66 72 30 37 41 37 34 } //02 00  Mfr07A74
		$a_01_1 = {51 58 59 75 6f 6b 36 36 30 } //02 00  QXYuok660
		$a_01_2 = {71 75 42 6f 4e 53 6d 54 53 6c } //02 00  quBoNSmTSl
		$a_01_3 = {43 6f 6e 6e 65 63 74 4e 61 6d 65 64 50 69 70 65 } //02 00  ConnectNamedPipe
		$a_01_4 = {44 69 73 63 6f 6e 6e 65 63 74 4e 61 6d 65 64 50 69 70 65 } //00 00  DisconnectNamedPipe
	condition:
		any of ($a_*)
 
}