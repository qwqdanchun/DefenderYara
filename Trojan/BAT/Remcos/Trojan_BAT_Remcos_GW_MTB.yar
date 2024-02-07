
rule Trojan_BAT_Remcos_GW_MTB{
	meta:
		description = "Trojan:BAT/Remcos.GW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_81_0 = {4c 69 62 72 61 72 79 53 79 73 74 65 6d 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  LibrarySystem.Properties.Resources
		$a_81_1 = {63 61 6c 6c 6d 65 66 61 73 74 62 72 6f 74 68 65 72 } //01 00  callmefastbrother
		$a_81_2 = {65 78 65 2e 34 65 77 72 65 70 6f 6f 63 } //01 00  exe.4ewrepooc
		$a_81_3 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_81_4 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_81_5 = {52 65 76 65 72 73 65 } //00 00  Reverse
	condition:
		any of ($a_*)
 
}