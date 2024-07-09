
rule Trojan_Win32_Sirefef_Q{
	meta:
		description = "Trojan:Win32/Sirefef.Q,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 09 00 00 "
		
	strings :
		$a_03_0 = {8d 4f 01 0f af c1 33 d2 6a 19 59 f7 f1 83 c2 61 66 89 16 83 c6 02 85 ff 75 ?? 33 c0 66 89 06 90 09 07 00 4f ff 15 } //5
		$a_03_1 = {81 ec f8 07 00 00 8b 45 ?? 83 65 ?? 00 53 56 57 c7 85 0c f8 ff ff 07 00 01 00 85 c0 0f 84 } //2
		$a_03_2 = {89 74 24 30 c7 84 24 ?? ?? 00 00 07 00 01 00 39 5d 08 75 07 33 c0 e9 ?? ?? ?? ?? 8b 4d 08 8d 51 01 8a 01 41 84 c0 75 f9 } //2
		$a_03_3 = {ff 75 f8 ff 75 f4 50 ff 52 40 85 c0 0f 85 ?? ?? 00 00 8b 45 fc 8b 08 50 ff 51 54 } //2
		$a_00_4 = {43 6f 6e 73 65 6e 74 50 72 6f 6d 70 74 42 65 68 61 76 69 6f 72 41 64 6d 69 6e 00 00 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 53 79 73 74 65 6d } //1
		$a_00_5 = {45 00 6c 00 65 00 76 00 61 00 74 00 69 00 6f 00 6e 00 3a 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 21 00 6e 00 65 00 77 00 3a 00 7b 00 33 00 61 00 64 00 30 00 35 00 35 00 37 00 35 00 2d 00 38 00 38 00 35 00 37 00 2d 00 34 00 38 00 35 00 30 00 2d 00 39 00 32 00 37 00 37 00 2d 00 31 00 31 00 62 00 38 00 35 00 62 00 64 00 62 00 38 00 65 00 30 00 39 00 7d 00 } //1 Elevation:Administrator!new:{3ad05575-8857-4850-9277-11b85bdb8e09}
		$a_00_6 = {5f 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 65 00 78 00 65 00 } //1 _update.exe
		$a_00_7 = {5c 00 73 00 79 00 73 00 77 00 6f 00 77 00 36 00 34 00 5c 00 64 00 66 00 72 00 67 00 75 00 69 00 2e 00 65 00 78 00 65 00 } //1 \syswow64\dfrgui.exe
		$a_01_8 = {2a 5c 73 68 65 6c 6c 65 78 5c 43 6f 6e 74 65 78 74 4d 65 6e 75 48 61 6e 64 6c 65 72 73 5c } //1 *\shellex\ContextMenuHandlers\
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_01_8  & 1)*1) >=7
 
}
rule Trojan_Win32_Sirefef_Q_2{
	meta:
		description = "Trojan:Win32/Sirefef.Q,SIGNATURE_TYPE_ARHSTR_EXT,07 00 07 00 09 00 00 "
		
	strings :
		$a_03_0 = {8d 4f 01 0f af c1 33 d2 6a 19 59 f7 f1 83 c2 61 66 89 16 83 c6 02 85 ff 75 ?? 33 c0 66 89 06 90 09 07 00 4f ff 15 } //5
		$a_03_1 = {81 ec f8 07 00 00 8b 45 ?? 83 65 ?? 00 53 56 57 c7 85 0c f8 ff ff 07 00 01 00 85 c0 0f 84 } //2
		$a_03_2 = {89 74 24 30 c7 84 24 ?? ?? 00 00 07 00 01 00 39 5d 08 75 07 33 c0 e9 ?? ?? ?? ?? 8b 4d 08 8d 51 01 8a 01 41 84 c0 75 f9 } //2
		$a_03_3 = {ff 75 f8 ff 75 f4 50 ff 52 40 85 c0 0f 85 ?? ?? 00 00 8b 45 fc 8b 08 50 ff 51 54 } //2
		$a_00_4 = {43 6f 6e 73 65 6e 74 50 72 6f 6d 70 74 42 65 68 61 76 69 6f 72 41 64 6d 69 6e 00 00 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 53 79 73 74 65 6d } //1
		$a_00_5 = {45 00 6c 00 65 00 76 00 61 00 74 00 69 00 6f 00 6e 00 3a 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 21 00 6e 00 65 00 77 00 3a 00 7b 00 33 00 61 00 64 00 30 00 35 00 35 00 37 00 35 00 2d 00 38 00 38 00 35 00 37 00 2d 00 34 00 38 00 35 00 30 00 2d 00 39 00 32 00 37 00 37 00 2d 00 31 00 31 00 62 00 38 00 35 00 62 00 64 00 62 00 38 00 65 00 30 00 39 00 7d 00 } //1 Elevation:Administrator!new:{3ad05575-8857-4850-9277-11b85bdb8e09}
		$a_00_6 = {5f 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 65 00 78 00 65 00 } //1 _update.exe
		$a_00_7 = {5c 00 73 00 79 00 73 00 77 00 6f 00 77 00 36 00 34 00 5c 00 64 00 66 00 72 00 67 00 75 00 69 00 2e 00 65 00 78 00 65 00 } //1 \syswow64\dfrgui.exe
		$a_01_8 = {2a 5c 73 68 65 6c 6c 65 78 5c 43 6f 6e 74 65 78 74 4d 65 6e 75 48 61 6e 64 6c 65 72 73 5c } //1 *\shellex\ContextMenuHandlers\
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_01_8  & 1)*1) >=7
 
}