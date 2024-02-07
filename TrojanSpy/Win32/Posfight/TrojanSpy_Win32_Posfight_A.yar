
rule TrojanSpy_Win32_Posfight_A{
	meta:
		description = "TrojanSpy:Win32/Posfight.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 00 6f 00 74 00 2f 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 2e 00 70 00 68 00 70 00 3f 00 69 00 64 00 3d 00 } //01 00  bot/command.php?id=
		$a_01_1 = {62 00 6f 00 74 00 2f 00 6c 00 6f 00 67 00 2e 00 70 00 68 00 70 00 3f 00 69 00 64 00 3d 00 } //01 00  bot/log.php?id=
		$a_01_2 = {5d 00 20 00 46 00 61 00 69 00 6c 00 65 00 64 00 20 00 74 00 6f 00 20 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 20 00 46 00 69 00 6c 00 65 00 3a 00 20 00 } //01 00  ] Failed to download File: 
		$a_01_3 = {5d 00 20 00 48 00 54 00 54 00 50 00 2d 00 46 00 6c 00 6f 00 6f 00 64 00 20 00 73 00 74 00 61 00 72 00 74 00 65 00 64 00 20 00 61 00 74 00 3a 00 } //01 00  ] HTTP-Flood started at:
		$a_01_4 = {5c 00 5b 00 4b 00 45 00 59 00 4c 00 4f 00 47 00 5d 00 } //01 00  \[KEYLOG]
		$a_01_5 = {5d 00 20 00 4e 00 65 00 77 00 20 00 49 00 6e 00 66 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //01 00  ] New Infection
		$a_01_6 = {5d 00 20 00 4e 00 6f 00 76 00 6f 00 20 00 49 00 6e 00 66 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //00 00  ] Novo Infection
		$a_00_7 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}