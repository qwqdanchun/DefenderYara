
rule VirTool_WinNT_Rootkitdrv_gen_FM{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.gen!FM,SIGNATURE_TYPE_PEHSTR_EXT,7d 00 6f 00 0a 00 00 "
		
	strings :
		$a_02_0 = {ff d6 83 4d ec ff 68 ?? ?? ?? ?? 8d 85 8c fe ff ff 68 b8 04 01 00 50 c7 45 e8 80 3c 36 fe ff 15 ?? ?? ?? ?? 83 c4 0c 8d 85 8c fe ff ff 50 8d 45 a0 50 ff 15 ?? ?? ?? ?? 6a 01 } //100
		$a_00_1 = {32 32 32 2e 38 38 2e 39 30 2e 32 32 } //10 222.88.90.22
		$a_00_2 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 65 00 74 00 63 00 5c 00 68 00 6f 00 73 00 74 00 73 00 } //10 \SystemRoot\system32\drivers\etc\hosts
		$a_00_3 = {77 77 77 2e 39 35 30 35 2e 63 6f 6d } //1 www.9505.com
		$a_00_4 = {34 31 39 39 2e 63 6f 6d } //1 4199.com
		$a_00_5 = {77 77 77 2e 34 31 39 39 2e 63 6f 6d } //1 www.4199.com
		$a_00_6 = {77 77 77 2e 61 72 73 77 70 2e 63 6f 6d } //1 www.arswp.com
		$a_00_7 = {70 69 61 6f 78 75 65 } //1 piaoxue
		$a_00_8 = {66 65 69 78 75 65 } //1 feixue
		$a_00_9 = {77 77 77 2e 66 65 69 78 75 65 2e 6e 65 74 } //1 www.feixue.net
	condition:
		((#a_02_0  & 1)*100+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1) >=111
 
}