
rule Trojan_Win32_Agent_DX{
	meta:
		description = "Trojan:Win32/Agent.DX,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 05 00 00 "
		
	strings :
		$a_02_0 = {80 3b 4a 0f 85 ?? ?? ?? ?? 80 7b 01 46 0f 85 ?? ?? ?? ?? 80 7b 02 49 0f 85 ?? ?? ?? ?? 80 7b 03 46 0f 85 ?? ?? ?? ?? 80 7b 04 00 0f 85 } //2
		$a_00_1 = {62 00 73 00 63 00 6c 00 69 00 63 00 6b 00 77 00 31 00 65 00 72 00 31 00 32 00 33 00 31 00 34 00 35 00 } //1 bsclickw1er123145
		$a_00_2 = {33 00 36 00 30 00 74 00 72 00 79 00 31 00 } //1 360try1
		$a_00_3 = {67 00 74 00 73 00 6b 00 69 00 6e 00 66 00 6f 00 2e 00 61 00 73 00 70 00 78 00 3f 00 76 00 65 00 72 00 3d 00 33 00 2e 00 33 00 26 00 74 00 3d 00 72 00 62 00 26 00 6d 00 3d 00 } //2 gtskinfo.aspx?ver=3.3&t=rb&m=
		$a_00_4 = {5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 \CurrentVersion\Run
	condition:
		((#a_02_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*2+(#a_00_4  & 1)*1) >=5
 
}