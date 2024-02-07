
rule Trojan_Win32_Sysmaine_A_dha{
	meta:
		description = "Trojan:Win32/Sysmaine.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 03 00 "
		
	strings :
		$a_03_0 = {68 dc 4b 4c 00 6a 08 50 89 45 90 01 01 ff d7 8b 4d 0c 8b f0 8b c1 6a 08 5b 99 f7 fb 83 65 90 01 01 00 2b ca 83 c1 10 90 00 } //01 00 
		$a_00_1 = {43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 20 00 50 00 61 00 6e 00 65 00 6c 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 61 00 74 00 69 00 6f 00 6e 00 61 00 6c 00 5c 00 47 00 65 00 6f 00 5c 00 } //01 00  Control Panel\International\Geo\
		$a_00_2 = {44 00 69 00 72 00 55 00 73 00 65 00 72 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 } //01 00  DirUserProfile
		$a_00_3 = {74 00 68 00 65 00 62 00 61 00 74 00 } //01 00  thebat
		$a_00_4 = {6e 00 65 00 74 00 73 00 63 00 70 00 } //00 00  netscp
		$a_00_5 = {5d 04 00 00 } //2a 63 
	condition:
		any of ($a_*)
 
}