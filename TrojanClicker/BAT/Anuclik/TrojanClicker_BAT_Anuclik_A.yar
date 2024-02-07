
rule TrojanClicker_BAT_Anuclik_A{
	meta:
		description = "TrojanClicker:BAT/Anuclik.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 74 00 69 00 6d 00 65 00 31 00 2e 00 74 00 78 00 74 00 } //01 00  /time1.txt
		$a_01_1 = {2f 00 74 00 69 00 6d 00 65 00 54 00 6f 00 43 00 6c 00 65 00 61 00 72 00 43 00 6f 00 6f 00 6b 00 69 00 65 00 31 00 2e 00 74 00 78 00 74 00 } //01 00  /timeToClearCookie1.txt
		$a_01_2 = {2f 00 67 00 6f 00 6f 00 67 00 6c 00 65 00 41 00 64 00 73 00 2e 00 74 00 78 00 74 00 } //01 00  /googleAds.txt
		$a_01_3 = {2f 00 73 00 69 00 74 00 65 00 42 00 61 00 63 00 6b 00 4c 00 69 00 6e 00 6b 00 31 00 2e 00 74 00 78 00 74 00 } //01 00  /siteBackLink1.txt
		$a_01_4 = {49 00 6e 00 65 00 74 00 43 00 70 00 6c 00 2e 00 63 00 70 00 6c 00 2c 00 43 00 6c 00 65 00 61 00 72 00 4d 00 79 00 54 00 72 00 61 00 63 00 6b 00 73 00 42 00 79 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 32 00 } //01 00  InetCpl.cpl,ClearMyTracksByProcess 2
		$a_01_5 = {75 73 65 72 41 67 65 6e 74 46 61 6b 65 } //00 00  userAgentFake
		$a_00_6 = {5d 04 00 00 } //ae 7a 
	condition:
		any of ($a_*)
 
}