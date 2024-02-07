
rule VirTool_WinNT_FURootkit_gen_B{
	meta:
		description = "VirTool:WinNT/FURootkit.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,ffffffd3 00 0b 00 05 00 00 64 00 "
		
	strings :
		$a_00_0 = {83 7d 14 04 0f 82 91 00 00 00 8b 45 10 85 c0 0f 84 86 00 00 00 8b 00 85 c0 74 0a 50 e8 5f ff ff ff 85 c0 75 08 } //64 00 
		$a_00_1 = {8b 0d 18 30 01 00 03 c1 8b 48 04 8b 10 89 11 8b 08 8b 40 04 89 41 04 eb 5b } //0a 00 
		$a_02_2 = {68 7b 2a 00 00 90 02 04 50 6a 00 56 ff 15 90 01 02 01 00 90 00 } //01 00 
		$a_00_3 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 6d 00 73 00 64 00 69 00 72 00 65 00 63 00 74 00 78 00 } //01 00  \Device\msdirectx
		$a_00_4 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 4d 00 53 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 50 00 } //00 00  \DosDevices\MSprocessP
	condition:
		any of ($a_*)
 
}