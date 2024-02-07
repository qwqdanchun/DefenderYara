
rule Trojan_BAT_RedLineStealer_EB_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 44 00 69 00 73 00 63 00 6f 00 72 00 64 00 5c 00 4c 00 6f 00 63 00 61 00 6c 00 20 00 53 00 74 00 6f 00 72 00 61 00 67 00 65 00 5c 00 6c 00 65 00 76 00 65 00 6c 00 64 00 62 00 } //01 00  \Discord\Local Storage\leveldb
		$a_01_1 = {48 00 6a 00 67 00 69 00 52 00 44 00 55 00 35 00 4a 00 52 00 67 00 39 00 4b 00 6d 00 63 00 55 00 49 00 43 00 51 00 73 00 4a 00 69 00 45 00 37 00 50 00 55 00 6b 00 63 00 42 00 69 00 70 00 42 00 4e 00 77 00 63 00 31 00 58 00 77 00 3d 00 3d 00 } //01 00  HjgiRDU5JRg9KmcUICQsJiE7PUkcBipBNwc1Xw==
		$a_01_2 = {4f 00 77 00 6c 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00  Owler.exe
		$a_01_3 = {2a 00 77 00 61 00 6c 00 6c 00 65 00 74 00 2a 00 } //01 00  *wallet*
		$a_01_4 = {6e 00 65 00 74 00 2e 00 74 00 63 00 70 00 } //01 00  net.tcp
		$a_01_5 = {6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 } //00 00  localhost
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_RedLineStealer_EB_MTB_2{
	meta:
		description = "Trojan:BAT/RedLineStealer.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 56 00 61 00 6c 00 76 00 65 00 5c 00 53 00 74 00 65 00 61 00 6d 00 4c 00 6f 00 67 00 69 00 6e 00 20 00 44 00 61 00 74 00 61 00 } //01 00  Software\Valve\SteamLogin Data
		$a_01_1 = {4e 00 6f 00 72 00 64 00 56 00 70 00 6e 00 2e 00 65 00 78 00 65 00 2a 00 4d 00 79 00 47 00 54 00 6f 00 4d 00 79 00 47 00 6b 00 65 00 6e 00 73 00 2e 00 74 00 4d 00 79 00 47 00 78 00 74 00 } //01 00  NordVpn.exe*MyGToMyGkens.tMyGxt
		$a_01_2 = {42 00 54 00 45 00 41 00 41 00 43 00 45 00 4c 00 4d 00 56 00 45 00 2f 00 49 00 44 00 42 00 56 00 4f 00 6a 00 39 00 56 00 52 00 43 00 67 00 4a 00 4a 00 55 00 55 00 70 00 44 00 7a 00 31 00 52 00 4f 00 69 00 52 00 4f 00 64 00 77 00 3d 00 3d 00 } //01 00  BTEAACELMVE/IDBVOj9VRCgJJUUpDz1ROiROdw==
		$a_01_3 = {47 00 7a 00 30 00 4c 00 52 00 51 00 34 00 4d 00 49 00 6c 00 59 00 3d 00 } //01 00  Gz0LRQ4MIlY=
		$a_01_4 = {65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 5f 00 6b 00 65 00 79 00 } //01 00  encrypted_key
		$a_01_5 = {42 00 6c 00 6f 00 77 00 69 00 65 00 2e 00 65 00 78 00 65 00 } //00 00  Blowie.exe
	condition:
		any of ($a_*)
 
}