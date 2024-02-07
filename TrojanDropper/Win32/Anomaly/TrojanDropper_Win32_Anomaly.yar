
rule TrojanDropper_Win32_Anomaly{
	meta:
		description = "TrojanDropper:Win32/Anomaly,SIGNATURE_TYPE_PEHSTR_EXT,29 00 29 00 07 00 00 0a 00 "
		
	strings :
		$a_03_0 = {c7 85 78 ff ff ff 90 01 04 c7 85 70 ff ff ff 08 00 00 00 8d 55 a0 52 8d 85 70 ff ff ff 50 8d 4d 90 90 51 ff 15 90 01 01 10 40 00 50 ff 15 90 01 01 10 40 00 8b d0 8d 4d dc ff 15 90 01 01 10 40 00 8d 55 90 90 52 8d 45 a0 50 8d 4d b0 51 6a 03 ff 15 90 01 01 10 40 00 83 c4 10 c7 45 fc 05 00 00 00 68 90 01 04 ff 15 90 01 01 10 40 00 8b d0 8d 4d c4 ff 15 90 01 01 10 40 00 8b 55 dc 52 68 90 01 04 ff 15 90 01 01 10 40 00 90 00 } //0a 00 
		$a_01_1 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 76 62 36 6d 69 6e 69 5c 56 42 36 2e 4f 4c 42 } //0a 00  C:\Program Files\vb6mini\VB6.OLB
		$a_00_2 = {3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 43 00 6f 00 6d 00 6d 00 6f 00 6e 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //0a 00  :\Program Files\Common Files\System
		$a_00_3 = {43 00 55 00 53 00 54 00 4f 00 4d 00 } //01 00  CUSTOM
		$a_00_4 = {5c 00 73 00 76 00 68 00 63 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  \svhcost.exe
		$a_00_5 = {5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  \svchost.exe
		$a_00_6 = {5c 00 67 00 65 00 74 00 6d 00 61 00 63 00 } //00 00  \getmac
	condition:
		any of ($a_*)
 
}