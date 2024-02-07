
rule Trojan_Win32_Guloader_RPM_MTB{
	meta:
		description = "Trojan:Win32/Guloader.RPM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 00 6f 00 6e 00 6b 00 62 00 69 00 72 00 64 00 2e 00 52 00 4f 00 53 00 } //01 00  monkbird.ROS
		$a_01_1 = {50 00 65 00 6e 00 61 00 6c 00 68 00 75 00 73 00 65 00 73 00 2e 00 63 00 65 00 6c 00 } //01 00  Penalhuses.cel
		$a_01_2 = {6d 00 69 00 64 00 73 00 6f 00 6d 00 6d 00 65 00 72 00 65 00 6e 00 73 00 2e 00 4c 00 65 00 74 00 } //01 00  midsommerens.Let
		$a_01_3 = {45 00 71 00 75 00 69 00 74 00 69 00 73 00 74 00 2e 00 6c 00 6e 00 6b 00 } //01 00  Equitist.lnk
		$a_01_4 = {75 00 68 00 65 00 6c 00 64 00 69 00 67 00 76 00 69 00 73 00 65 00 2e 00 41 00 6d 00 65 00 } //01 00  uheldigvise.Ame
		$a_01_5 = {52 00 61 00 74 00 74 00 65 00 6e 00 65 00 73 00 31 00 33 00 36 00 } //01 00  Rattenes136
		$a_01_6 = {52 00 69 00 63 00 65 00 62 00 69 00 72 00 64 00 31 00 33 00 38 00 } //01 00  Ricebird138
		$a_01_7 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 41 00 64 00 64 00 69 00 63 00 74 00 69 00 6f 00 6e 00 73 00 } //01 00  Software\Addictions
		$a_01_8 = {55 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 5c 00 64 00 65 00 66 00 6c 00 6f 00 77 00 65 00 72 00 69 00 6e 00 67 00 } //01 00  Uninstall\deflowering
		$a_01_9 = {4b 00 69 00 6c 00 64 00 65 00 73 00 70 00 72 00 6f 00 67 00 65 00 74 00 73 00 5c 00 46 00 6c 00 75 00 76 00 69 00 61 00 74 00 69 00 6f 00 6e 00 33 00 30 00 } //01 00  Kildesprogets\Fluviation30
		$a_01_10 = {48 00 61 00 75 00 6e 00 63 00 68 00 6c 00 65 00 73 00 73 00 5c 00 67 00 6c 00 61 00 64 00 69 00 61 00 74 00 6f 00 72 00 } //00 00  Haunchless\gladiator
	condition:
		any of ($a_*)
 
}