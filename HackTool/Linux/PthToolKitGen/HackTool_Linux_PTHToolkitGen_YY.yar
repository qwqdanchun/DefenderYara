
rule HackTool_Linux_PTHToolkitGen_YY{
	meta:
		description = "HackTool:Linux/PTHToolkitGen.YY,SIGNATURE_TYPE_CMDHSTR_EXT,14 00 14 00 08 00 00 14 00 "
		
	strings :
		$a_00_0 = {70 00 74 00 68 00 2d 00 6e 00 65 00 74 00 } //14 00  pth-net
		$a_00_1 = {70 00 74 00 68 00 2d 00 72 00 70 00 63 00 63 00 6c 00 69 00 65 00 6e 00 74 00 } //14 00  pth-rpcclient
		$a_00_2 = {70 00 74 00 68 00 2d 00 73 00 6d 00 62 00 63 00 6c 00 69 00 65 00 6e 00 74 00 } //14 00  pth-smbclient
		$a_00_3 = {70 00 74 00 68 00 2d 00 73 00 6d 00 62 00 67 00 65 00 74 00 } //14 00  pth-smbget
		$a_00_4 = {70 00 74 00 68 00 2d 00 77 00 69 00 6e 00 65 00 78 00 65 00 } //14 00  pth-winexe
		$a_00_5 = {70 00 74 00 68 00 2d 00 77 00 6d 00 69 00 63 00 } //14 00  pth-wmic
		$a_00_6 = {70 00 74 00 68 00 2d 00 77 00 6d 00 69 00 73 00 } //14 00  pth-wmis
		$a_00_7 = {70 00 74 00 68 00 2d 00 73 00 71 00 73 00 68 00 } //00 00  pth-sqsh
	condition:
		any of ($a_*)
 
}