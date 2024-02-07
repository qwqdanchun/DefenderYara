
rule Trojan_Win64_Lazarus_A_ibt{
	meta:
		description = "Trojan:Win64/Lazarus.A!ibt,SIGNATURE_TYPE_PEHSTR,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 75 00 72 00 72 00 65 00 64 00 20 00 77 00 68 00 69 00 6c 00 65 00 20 00 72 00 65 00 61 00 64 00 69 00 6e 00 67 00 20 00 66 00 72 00 6f 00 6d 00 20 00 74 00 68 00 65 00 20 00 63 00 6c 00 69 00 65 00 6e 00 74 00 3a 00 20 00 25 00 64 00 } //01 00  curred while reading from the client: %d
		$a_01_1 = {52 00 65 00 63 00 65 00 69 00 76 00 65 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 20 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 66 00 72 00 6f 00 6d 00 20 00 74 00 72 00 6f 00 6a 00 61 00 6e 00 } //01 00  Receive Update command from trojan
		$a_01_2 = {52 00 65 00 63 00 65 00 69 00 76 00 65 00 20 00 64 00 69 00 73 00 63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 20 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 66 00 72 00 6f 00 6d 00 20 00 74 00 72 00 6f 00 6a 00 61 00 6e 00 } //01 00  Receive disconnect command from trojan
		$a_01_3 = {52 00 65 00 63 00 65 00 69 00 76 00 65 00 20 00 55 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 66 00 72 00 6f 00 6d 00 20 00 54 00 72 00 6f 00 6a 00 61 00 6e 00 } //01 00  Receive Uninstall command from Trojan
		$a_01_4 = {64 65 73 74 69 6e 61 74 69 6f 6e 5f 61 64 64 72 65 73 73 5f 72 65 71 75 69 72 65 64 } //01 00  destination_address_required
		$a_01_5 = {45 78 65 52 65 6c 65 61 73 65 5c 6d 61 69 6e 74 65 6e 61 6e 63 65 73 65 72 76 69 63 65 5f 78 36 34 5f 45 78 65 52 65 6c 65 61 73 65 2e 70 64 62 } //00 00  ExeRelease\maintenanceservice_x64_ExeRelease.pdb
	condition:
		any of ($a_*)
 
}