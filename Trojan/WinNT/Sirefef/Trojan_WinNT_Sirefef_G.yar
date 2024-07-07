
rule Trojan_WinNT_Sirefef_G{
	meta:
		description = "Trojan:WinNT/Sirefef.G,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {6a 20 89 44 24 90 01 01 6a 07 8d 44 24 90 01 01 50 8d 44 24 90 01 01 50 68 bf 01 12 00 90 00 } //2
		$a_03_1 = {6a 18 6a 01 bb 9a 00 00 c0 ff 15 90 01 04 85 c0 0f 84 90 00 } //2
		$a_00_2 = {5c 00 5c 00 2e 00 5c 00 67 00 6c 00 6f 00 62 00 61 00 6c 00 72 00 6f 00 6f 00 74 00 5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 \\.\globalroot\Device\svchost.exe\svchost.exe
		$a_00_3 = {47 00 65 00 6e 00 44 00 69 00 73 00 6b 00 } //1 GenDisk
		$a_00_4 = {49 00 44 00 45 00 5c 00 } //1 IDE\
		$a_00_5 = {55 00 53 00 42 00 20 00 73 00 74 00 6f 00 72 00 61 00 67 00 65 00 20 00 64 00 65 00 76 00 69 00 63 00 65 00 } //1 USB storage device
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}
rule Trojan_WinNT_Sirefef_G_2{
	meta:
		description = "Trojan:WinNT/Sirefef.G,SIGNATURE_TYPE_ARHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {6a 20 89 44 24 90 01 01 6a 07 8d 44 24 90 01 01 50 8d 44 24 90 01 01 50 68 bf 01 12 00 90 00 } //2
		$a_03_1 = {6a 18 6a 01 bb 9a 00 00 c0 ff 15 90 01 04 85 c0 0f 84 90 00 } //2
		$a_00_2 = {5c 00 5c 00 2e 00 5c 00 67 00 6c 00 6f 00 62 00 61 00 6c 00 72 00 6f 00 6f 00 74 00 5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 \\.\globalroot\Device\svchost.exe\svchost.exe
		$a_00_3 = {47 00 65 00 6e 00 44 00 69 00 73 00 6b 00 } //1 GenDisk
		$a_00_4 = {49 00 44 00 45 00 5c 00 } //1 IDE\
		$a_00_5 = {55 00 53 00 42 00 20 00 73 00 74 00 6f 00 72 00 61 00 67 00 65 00 20 00 64 00 65 00 76 00 69 00 63 00 65 00 } //1 USB storage device
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}