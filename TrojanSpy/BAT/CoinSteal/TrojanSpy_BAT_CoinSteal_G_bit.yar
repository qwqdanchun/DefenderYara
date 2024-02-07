
rule TrojanSpy_BAT_CoinSteal_G_bit{
	meta:
		description = "TrojanSpy:BAT/CoinSteal.G!bit,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 4f 00 6e 00 63 00 65 00 } //02 00  Software\Microsoft\Windows\CurrentVersion\RunOnce
		$a_01_1 = {61 00 70 00 69 00 2e 00 6f 00 70 00 65 00 6e 00 6e 00 69 00 63 00 70 00 72 00 6f 00 6a 00 65 00 63 00 74 00 2e 00 6f 00 72 00 67 00 2f 00 67 00 65 00 6f 00 69 00 70 00 } //02 00  api.opennicproject.org/geoip
		$a_01_2 = {73 00 76 00 63 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 } //01 00  svcVersion
		$a_01_3 = {2e 00 76 00 73 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  .vshost.exe
		$a_01_4 = {7d 00 7b 00 5f 00 2b 00 24 00 2a 00 21 00 23 00 25 00 5e 00 29 00 } //00 00  }{_+$*!#%^)
	condition:
		any of ($a_*)
 
}