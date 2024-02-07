
rule Trojan_Win32_Emotet_F{
	meta:
		description = "Trojan:Win32/Emotet.F,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b 44 24 0c 8b 4c 24 2c ba 90 01 04 29 ca 31 c9 89 44 24 08 89 54 24 04 89 ca 8b 4c 24 04 f7 f1 8b 44 24 20 8b 4c 24 08 8a 1c 08 8a ba 90 01 04 28 fb c7 44 24 34 ff ff ff ff c7 44 24 30 90 01 04 8b 54 24 1c 88 1c 0a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Emotet_F_2{
	meta:
		description = "Trojan:Win32/Emotet.F,SIGNATURE_TYPE_PEHSTR,07 00 07 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 32 32 32 32 63 66 6f 75 72 2d 70 61 72 74 57 65 47 6f 6f 67 6c 65 43 68 72 6f 6d 65 } //01 00  i2222cfour-partWeGoogleChrome
		$a_01_1 = {42 65 6e 63 68 6d 61 72 6b 38 73 75 70 70 6f 72 74 39 6e 6f 72 65 6c 65 61 73 65 28 62 75 74 } //01 00  Benchmark8support9norelease(but
		$a_01_2 = {38 6f 66 73 75 63 6b 69 74 74 68 65 45 78 70 6c 6f 72 65 72 4f 71 6a 6f 75 72 6e 61 6c 73 63 } //01 00  8ofsuckittheExplorerOqjournalsc
		$a_01_3 = {43 00 6f 00 6c 00 6c 00 65 00 67 00 65 00 30 00 47 00 6f 00 76 00 65 00 72 00 6e 00 6d 00 65 00 6e 00 74 00 74 00 6f 00 73 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 50 00 75 00 61 00 70 00 70 00 72 00 6f 00 78 00 69 00 6d 00 61 00 74 00 65 00 6c 00 79 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 75 00 70 00 64 00 61 00 74 00 65 00 73 00 } //01 00  College0GovernmenttosettingsPuapproximatelydefaultupdates
		$a_01_4 = {71 00 69 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 32 00 30 00 31 00 36 00 2c 00 72 00 73 00 65 00 65 00 4d 00 79 00 65 00 61 00 72 00 2e 00 34 00 30 00 67 00 39 00 39 00 } //01 00  qinformation2016,rseeMyear.40g99
		$a_01_5 = {32 54 71 45 65 69 74 68 65 72 2e 31 31 33 69 6e 73 74 65 61 64 61 33 56 34 33 } //04 00  2TqEeither.113insteada3V43
		$a_01_6 = {77 52 48 57 52 48 40 34 68 6a 65 74 68 77 65 68 67 77 2e 70 64 62 } //01 00  wRHWRH@4hjethwehgw.pdb
		$a_01_7 = {79 00 69 00 54 00 6e 00 75 00 6d 00 62 00 65 00 72 00 73 00 56 00 77 00 68 00 65 00 74 00 68 00 65 00 72 00 4e 00 6f 00 76 00 65 00 6d 00 62 00 65 00 72 00 55 00 31 00 34 00 2c 00 79 00 } //01 00  yiTnumbersVwhetherNovemberU14,y
		$a_01_8 = {57 33 43 2c 69 6e 20 32 30 31 30 7a 67 67 6f 72 67 61 6e 69 7a 61 74 69 6f 6e 47 62 65 } //01 00  W3C,in 2010zggorganizationGbe
		$a_01_9 = {4a 00 64 00 65 00 61 00 6e 00 5a 00 61 00 50 00 41 00 6c 00 6c 00 69 00 73 00 6f 00 6c 00 61 00 74 00 69 00 6f 00 6e 00 2c 00 31 00 34 00 36 00 35 00 } //04 00  JdeanZaPAllisolation,1465
		$a_01_10 = {43 48 6d 75 54 6d 6b 74 59 79 4c 2e 70 64 62 } //00 00  CHmuTmktYyL.pdb
	condition:
		any of ($a_*)
 
}