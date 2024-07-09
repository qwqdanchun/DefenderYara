
rule Trojan_Win32_TrickBot_K_MTB{
	meta:
		description = "Trojan:Win32/TrickBot.K!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_00_0 = {58 00 76 00 61 00 75 00 6c 00 74 00 63 00 6c 00 69 00 2e 00 64 00 6c 00 6c 00 } //1 Xvaultcli.dll
		$a_00_1 = {53 00 79 00 73 00 4c 00 69 00 73 00 74 00 56 00 69 00 65 00 77 00 33 00 32 00 } //1 SysListView32
		$a_00_2 = {61 00 74 00 6c 00 2e 00 64 00 6c 00 6c 00 } //1 atl.dll
		$a_00_3 = {53 52 56 44 41 54 41 2e 64 6c 6c 00 43 6f 6e 74 72 6f 6c 00 46 72 65 65 42 75 66 66 65 72 00 4e 65 74 53 65 72 76 65 72 53 74 61 72 74 00 4e 65 74 53 65 72 76 65 72 53 74 6f 70 00 52 65 6c 65 61 73 65 00 53 74 61 72 74 00 } //1 剓䑖呁⹁汤l潃瑮潲l牆敥畂晦牥一瑥敓癲牥瑓牡t敎却牥敶卲潴p敒敬獡e瑓牡t
		$a_03_4 = {8b c1 8b d1 03 c6 3b fe 76 08 3b f8 0f 82 ?? ?? ?? ?? 83 f9 ?? 0f 82 ?? ?? ?? ?? 81 f9 ?? ?? ?? ?? 73 13 0f ba 25 ?? ?? ?? ?? 01 0f 82 ?? ?? ?? ?? e9 ?? ?? ?? ?? 0f ba 25 ?? ?? ?? ?? 01 73 09 f3 a4 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}