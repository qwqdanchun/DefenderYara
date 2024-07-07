
rule PWS_Win32_Tidola_A_dll{
	meta:
		description = "PWS:Win32/Tidola.A!dll,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0a 00 00 "
		
	strings :
		$a_00_0 = {70 61 7e 24 73 73 70 6f 72 74 2e 79 75 79 61 6e 2e 63 6f 6d } //1 pa~$ssport.yuyan.com
		$a_01_1 = {2e 61 64 64 00 } //1
		$a_02_2 = {47 61 6d 65 3d 90 02 03 26 70 61 72 61 3d 25 73 26 25 76 65 73 3d 90 02 03 26 64 31 30 3d 25 73 26 64 31 31 3d 25 73 26 64 30 30 3d 25 73 26 64 30 31 3d 25 73 26 64 32 30 3d 25 73 3a 25 73 25 25 32 30 25 73 3a 25 73 25 25 32 30 25 73 3a 25 73 26 64 37 30 3d 25 64 26 64 39 30 3d 25 64 90 00 } //1
		$a_01_3 = {61 63 74 3d 26 64 31 30 3d 25 73 26 64 38 30 3d 25 64 } //1 act=&d10=%s&d80=%d
		$a_00_4 = {68 74 74 70 3a 2f 2f 25 73 3a 25 64 25 73 3f 25 73 } //1 http://%s:%d%s?%s
		$a_00_5 = {5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //1 \drivers\etc\hosts
		$a_00_6 = {25 73 25 73 25 78 } //1 %s%s%x
		$a_00_7 = {25 73 25 73 2a 2e 64 6c 6c } //1 %s%s*.dll
		$a_00_8 = {63 73 72 73 73 2e 65 78 65 } //1 csrss.exe
		$a_00_9 = {43 72 6f 73 73 4c 69 6e 6b 53 56 43 } //65436 CrossLinkSVC
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_02_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*65436) >=8
 
}