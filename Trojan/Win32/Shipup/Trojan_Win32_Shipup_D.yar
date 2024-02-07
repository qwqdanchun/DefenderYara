
rule Trojan_Win32_Shipup_D{
	meta:
		description = "Trojan:Win32/Shipup.D,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0d 00 08 00 00 07 00 "
		
	strings :
		$a_01_0 = {7e 21 53 8b 44 24 08 8d 0c 02 8a 04 02 2a c2 8a d8 c0 eb 04 c0 e0 04 02 d8 42 3b 54 24 0c 88 19 7c e1 } //05 00 
		$a_03_1 = {3b c3 75 27 8a 85 78 ff ff ff 3a c3 74 12 fe c8 88 86 90 01 02 40 00 8a 84 35 79 ff ff ff 46 eb ea 39 5d 08 88 9e 90 01 02 40 00 74 77 57 8d 85 78 fd ff ff 68 00 02 00 00 90 00 } //01 00 
		$a_01_2 = {4d 69 63 72 6f 73 6f 66 74 46 6c 61 73 68 } //01 00  MicrosoftFlash
		$a_00_3 = {5c 66 69 6c 65 74 69 6d 65 2e 64 61 74 } //01 00  \filetime.dat
		$a_00_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 53 68 69 70 54 72 } //01 00  Software\Microsoft\ShipTr
		$a_01_5 = {4d 61 79 62 65 20 61 20 45 6e 63 72 79 70 74 65 64 20 46 6c 61 73 68 20 44 69 73 6b } //01 00  Maybe a Encrypted Flash Disk
		$a_01_6 = {55 6e 48 6f 6f 6b 20 4f 4b 21 } //01 00  UnHook OK!
		$a_01_7 = {4d 69 63 72 6f 73 6f 66 74 53 68 69 70 48 61 76 65 41 63 6b } //00 00  MicrosoftShipHaveAck
	condition:
		any of ($a_*)
 
}