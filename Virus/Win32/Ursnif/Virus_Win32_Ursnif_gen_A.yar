
rule Virus_Win32_Ursnif_gen_A{
	meta:
		description = "Virus:Win32/Ursnif.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 06 00 00 "
		
	strings :
		$a_01_0 = {44 3a 28 44 3b 4f 49 43 49 3b 47 41 3b 3b 3b 42 47 29 28 44 3b 4f 49 43 49 3b 47 41 3b 3b 3b 41 4e 29 28 41 3b 4f 49 43 49 3b 47 41 3b 3b 3b 41 55 29 28 41 3b 4f 49 43 49 3b 47 41 3b 3b 3b 42 41 29 00 } //5
		$a_01_1 = {53 3a 28 4d 4c 3b 3b 4e 57 3b 3b 3b 4c 57 29 00 } //5 㩓䴨㭌主㭗㬻坌)
		$a_01_2 = {25 00 30 00 38 00 78 00 25 00 30 00 34 00 78 00 25 00 30 00 34 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 00 00 } //5
		$a_01_3 = {73 00 70 00 70 00 63 00 2e 00 65 00 78 00 65 00 00 00 } //5
		$a_01_4 = {6e 00 5c 00 2a 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_01_5 = {53 74 61 72 74 75 70 41 70 70 72 6f 76 65 64 5c 52 75 6e 00 } //1 瑓牡畴䅰灰潲敶層畒n
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=21
 
}
rule Virus_Win32_Ursnif_gen_A_2{
	meta:
		description = "Virus:Win32/Ursnif.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {61 74 74 72 69 62 20 2d 72 20 2d 73 20 2d 68 20 22 25 73 22 } //1 attrib -r -s -h "%s"
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 41 00 70 00 70 00 72 00 6f 00 76 00 65 00 64 00 5c 00 52 00 75 00 6e 00 } //1 Software\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run
		$a_01_2 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 25 00 30 00 38 00 78 00 25 00 30 00 34 00 78 00 25 00 30 00 34 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 25 00 30 00 32 00 78 00 } //1 Global\%08x%04x%04x%02x%02x%02x%02x%02x%02x%02x%02x
		$a_03_3 = {c7 44 24 1c 30 00 00 00 89 54 24 20 ff 15 ?? ?? ?? ?? 8d 4c 24 0c e8 ?? ?? ?? ?? 81 74 24 0c fc 58 85 cf 8d 54 24 0c 8d 4c 24 30 e8 } //1
		$a_03_4 = {8d 85 dc f3 ff ff 50 68 04 01 00 00 ff 15 ?? ?? ?? ?? 8d 85 e4 fd ff ff 50 6a 00 68 ?? ?? ?? ?? 8d 85 dc f3 ff ff 50 ff 15 ?? ?? ?? ?? 83 ff 01 75 07 ba ?? ?? ?? ?? eb 0a 83 ff 02 75 10 ba ?? ?? ?? ?? 8d 8d e4 fd ff ff e8 ?? ?? ?? ?? 33 c0 50 68 80 00 00 00 6a 02 50 50 8b f0 68 00 00 00 40 8d 85 e4 fd ff ff 50 ff 15 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}