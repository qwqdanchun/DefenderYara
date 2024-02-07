
rule VirTool_WinNT_Cutwail_I{
	meta:
		description = "VirTool:WinNT/Cutwail.I,SIGNATURE_TYPE_PEHSTR_EXT,07 00 05 00 06 00 00 03 00 "
		
	strings :
		$a_03_0 = {85 c0 74 69 68 90 01 02 01 00 8b 4d 0c 51 e8 90 01 02 ff ff 0f b6 d0 85 d2 74 54 c7 45 fc 00 00 00 00 c7 45 f8 00 00 00 00 6a 00 e8 90 01 02 00 00 6a 01 8d 45 f8 50 8d 4d fc 51 e8 90 00 } //01 00 
		$a_01_1 = {5c 00 57 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 5c 00 4e 00 6f 00 74 00 69 00 66 00 79 00 5c 00 57 00 69 00 6e 00 4e 00 74 00 33 00 32 00 } //01 00  \Winlogon\Notify\WinNt32
		$a_01_2 = {57 00 4c 00 45 00 76 00 65 00 6e 00 74 00 53 00 74 00 61 00 72 00 74 00 53 00 68 00 65 00 6c 00 6c 00 } //01 00  WLEventStartShell
		$a_01_3 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 57 00 69 00 6e 00 44 00 61 00 74 00 61 00 2e 00 63 00 61 00 62 00 } //01 00  \SystemRoot\system32\WinData.cab
		$a_01_4 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 50 00 72 00 6f 00 74 00 32 00 } //01 00  \DosDevices\Prot2
		$a_01_5 = {73 69 62 65 72 69 61 5c 70 72 6f 74 65 63 74 5c 6f 62 6a 66 72 65 5f 77 78 70 5f 78 38 36 5c 69 33 38 36 5c 70 72 6f 74 65 63 74 2e 70 64 62 } //00 00  siberia\protect\objfre_wxp_x86\i386\protect.pdb
	condition:
		any of ($a_*)
 
}