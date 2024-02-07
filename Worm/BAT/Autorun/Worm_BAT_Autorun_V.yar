
rule Worm_BAT_Autorun_V{
	meta:
		description = "Worm:BAT/Autorun.V,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1a 00 0c 00 00 05 00 "
		
	strings :
		$a_01_0 = {4d 61 69 6c 41 64 64 72 65 73 73 43 6f 6c 6c 65 63 74 69 6f 6e } //05 00  MailAddressCollection
		$a_01_1 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 } //05 00  DisableTaskMgr
		$a_01_2 = {73 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 77 00 69 00 6e 00 33 00 32 00 5f 00 73 00 68 00 61 00 72 00 65 00 } //05 00  select * from win32_share
		$a_00_3 = {4d 00 65 00 6c 00 74 00 2e 00 62 00 61 00 74 00 } //01 00  Melt.bat
		$a_00_4 = {67 65 74 68 61 73 68 63 6f 64 65 } //01 00  gethashcode
		$a_00_5 = {73 65 74 5f 4b 65 79 } //01 00  set_Key
		$a_01_6 = {41 6e 74 69 4b 65 79 73 63 72 61 6d 62 6c 65 72 } //01 00  AntiKeyscrambler
		$a_00_7 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //01 00  [autorun]
		$a_00_8 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00  autorun.inf
		$a_00_9 = {73 00 68 00 65 00 6c 00 6c 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 3d 00 } //01 00  shellexecute=
		$a_00_10 = {62 69 74 64 65 66 65 6e 64 65 72 } //01 00  bitdefender
		$a_00_11 = {73 70 65 72 73 6b } //00 00  spersk
	condition:
		any of ($a_*)
 
}