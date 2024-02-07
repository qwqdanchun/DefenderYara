
rule TrojanDownloader_BAT_FakeAdobpd_A{
	meta:
		description = "TrojanDownloader:BAT/FakeAdobpd.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {61 72 62 6f 72 90 02 20 5c 50 72 6f 6a 65 63 74 73 5c 46 6c 61 73 68 55 70 5c 46 6c 61 73 68 55 70 90 00 } //01 00 
		$a_01_1 = {51 00 57 00 52 00 76 00 59 00 6d 00 55 00 } //01 00  QWRvYmU
		$a_01_2 = {5a 00 6d 00 78 00 7a 00 61 00 44 00 4d 00 79 00 4c 00 6d 00 4e 00 32 00 59 00 77 00 3d 00 3d 00 } //01 00  ZmxzaDMyLmN2Yw==
		$a_01_3 = {61 00 48 00 52 00 30 00 63 00 44 00 6f 00 76 00 4c 00 } //01 00  aHR0cDovL
		$a_01_4 = {55 00 32 00 56 00 30 00 64 00 58 00 41 00 67 00 54 00 47 00 39 00 6e 00 63 00 77 00 3d 00 3d 00 } //01 00  U2V0dXAgTG9ncw==
		$a_01_5 = {5c 00 55 00 70 00 64 00 61 00 74 00 65 00 20 00 4c 00 6f 00 67 00 } //00 00  \Update Log
		$a_00_6 = {78 0d 01 00 } //04 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_BAT_FakeAdobpd_A_2{
	meta:
		description = "TrojanDownloader:BAT/FakeAdobpd.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 00 48 00 52 00 30 00 63 00 44 00 6f 00 76 00 4c 00 7a 00 45 00 33 00 4e 00 69 00 34 00 31 00 4f 00 43 00 34 00 78 00 4d 00 54 00 55 00 75 00 4d 00 54 00 49 00 76 00 } //01 00  aHR0cDovLzE3Ni41OC4xMTUuMTIv
		$a_01_1 = {55 00 70 00 64 00 61 00 74 00 65 00 3a 00 55 00 70 00 64 00 61 00 74 00 65 00 } //01 00  Update:Update
		$a_01_2 = {73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 20 00 2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 73 00 63 00 20 00 6f 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 20 00 2f 00 74 00 6e 00 20 00 7b 00 30 00 7d 00 20 00 2f 00 72 00 6c 00 20 00 68 00 69 00 67 00 68 00 65 00 73 00 74 00 } //01 00  schtasks /create /sc onlogon /tn {0} /rl highest
		$a_01_3 = {59 00 7a 00 70 00 63 00 64 00 32 00 6c 00 75 00 5a 00 47 00 39 00 33 00 63 00 31 00 78 00 68 00 5a 00 47 00 39 00 69 00 5a 00 54 00 4d 00 79 00 4c 00 6d 00 56 00 34 00 5a 00 51 00 3d 00 3d 00 } //00 00  Yzpcd2luZG93c1xhZG9iZTMyLmV4ZQ==
		$a_00_4 = {5d 04 00 } //00 96 
	condition:
		any of ($a_*)
 
}