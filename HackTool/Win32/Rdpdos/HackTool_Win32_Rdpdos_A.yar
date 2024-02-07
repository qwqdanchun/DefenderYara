
rule HackTool_Win32_Rdpdos_A{
	meta:
		description = "HackTool:Win32/Rdpdos.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 07 00 00 03 00 "
		
	strings :
		$a_01_0 = {78 00 30 00 33 00 5c 00 78 00 39 00 39 00 5c 00 78 00 39 00 39 00 5c 00 78 00 31 00 33 00 5c 00 78 00 30 00 65 00 5c 00 78 00 } //01 00  x03\x99\x99\x13\x0e\x
		$a_01_1 = {52 44 50 4b 69 6c 6c } //01 00  RDPKill
		$a_00_2 = {52 00 44 00 50 00 20 00 67 00 72 00 65 00 6d 00 6c 00 69 00 6e 00 73 00 } //01 00  RDP gremlins
		$a_00_3 = {57 00 65 00 6c 00 63 00 6f 00 6d 00 65 00 20 00 74 00 6f 00 20 00 52 00 44 00 50 00 4b 00 69 00 6c 00 6c 00 20 00 28 00 4d 00 53 00 31 00 32 00 2d 00 30 00 32 00 30 00 29 00 } //01 00  Welcome to RDPKill (MS12-020)
		$a_01_4 = {4d 61 72 6b 20 44 65 50 61 6c 6d 61 } //01 00  Mark DePalma
		$a_01_5 = {63 6d 64 4b 69 6c 6c } //01 00  cmdKill
		$a_01_6 = {33 33 38 39 } //00 00  3389
	condition:
		any of ($a_*)
 
}