
rule VirTool_WinNT_Cutwail_J{
	meta:
		description = "VirTool:WinNT/Cutwail.J,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 08 00 00 "
		
	strings :
		$a_03_0 = {89 45 f8 8b 55 0c 52 a1 ?? ?? ?? ?? 8b 4d fc 03 08 51 e8 ?? ?? 00 00 83 c4 08 85 c0 75 04 b0 01 eb 02 32 c0 } //2
		$a_03_1 = {83 7d 08 00 74 63 83 7d 0c 00 74 5d 68 ?? ?? 00 00 8d 8d ?? ?? ff ff 51 8d 95 ?? ?? ff ff 52 e8 } //2
		$a_03_2 = {24 08 9d 74 17 81 7d ?? 40 24 08 9d } //1
		$a_01_3 = {45 00 58 00 45 00 52 00 45 00 53 00 4f 00 55 00 52 00 43 00 45 00 } //1 EXERESOURCE
		$a_01_4 = {5c 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //1 \FileSystem
		$a_01_5 = {57 00 69 00 6e 00 4e 00 74 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 } //1 WinNt32.dll
		$a_01_6 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 50 00 72 00 6f 00 74 00 32 00 } //1 \DosDevices\Prot2
		$a_01_7 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 50 00 72 00 6f 00 74 00 32 00 } //1 \Device\Prot2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=6
 
}