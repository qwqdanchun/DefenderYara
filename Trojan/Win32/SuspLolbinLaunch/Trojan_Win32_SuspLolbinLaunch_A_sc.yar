
rule Trojan_Win32_SuspLolbinLaunch_A_sc{
	meta:
		description = "Trojan:Win32/SuspLolbinLaunch.A!sc,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_02_0 = {73 00 63 00 20 00 63 00 72 00 65 00 61 00 74 00 65 00 [0-50] 62 00 69 00 6e 00 70 00 61 00 74 00 68 00 3d 00 } //2
		$a_02_1 = {73 00 63 00 2e 00 65 00 78 00 65 00 [0-50] 63 00 72 00 65 00 61 00 74 00 65 00 [0-50] 62 00 69 00 6e 00 70 00 61 00 74 00 68 00 3d 00 } //2
		$a_00_2 = {71 00 75 00 65 00 72 00 79 00 } //-10 query
		$a_00_3 = {73 00 65 00 6e 00 73 00 65 00 } //-10 sense
	condition:
		((#a_02_0  & 1)*2+(#a_02_1  & 1)*2+(#a_00_2  & 1)*-10+(#a_00_3  & 1)*-10) >=2
 
}