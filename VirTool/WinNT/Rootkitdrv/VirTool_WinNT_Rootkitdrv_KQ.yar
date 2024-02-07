
rule VirTool_WinNT_Rootkitdrv_KQ{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.KQ,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 48 00 61 00 72 00 64 00 64 00 69 00 73 00 6b 00 30 00 5c 00 44 00 52 00 30 00 } //01 00  \Device\Harddisk0\DR0
		$a_00_1 = {5c 00 44 00 72 00 69 00 76 00 65 00 72 00 5c 00 61 00 74 00 61 00 70 00 69 00 } //01 00  \Driver\atapi
		$a_00_2 = {5c 00 44 00 72 00 69 00 76 00 65 00 72 00 5c 00 6e 00 76 00 61 00 74 00 61 00 } //01 00  \Driver\nvata
		$a_00_3 = {5c 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 4e 00 74 00 66 00 73 00 } //01 00  \FileSystem\Ntfs
		$a_01_4 = {4f 62 52 65 66 65 72 65 6e 63 65 4f 62 6a 65 63 74 42 79 4e 61 6d 65 } //01 00  ObReferenceObjectByName
		$a_01_5 = {8b 41 60 fe 49 23 83 e8 24 56 89 41 60 89 50 14 0f b6 00 8b 72 08 51 52 ff 54 86 38 5e 5d c2 08 00 } //00 00 
	condition:
		any of ($a_*)
 
}