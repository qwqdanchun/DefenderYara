
rule Trojan_Win32_Msidebar_B{
	meta:
		description = "Trojan:Win32/Msidebar.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {26 00 75 00 73 00 72 00 5f 00 67 00 75 00 62 00 75 00 6e 00 3d 00 [0-04] 26 00 73 00 65 00 72 00 69 00 61 00 6c 00 6e 00 6f 00 3d 00 } //1
		$a_00_1 = {65 00 78 00 65 00 63 00 75 00 74 00 65 00 2e 00 70 00 68 00 70 00 3f 00 6d 00 5f 00 6f 00 72 00 69 00 67 00 69 00 6e 00 3d 00 } //1 execute.php?m_origin=
		$a_00_2 = {26 00 50 00 69 00 64 00 3d 00 63 00 77 00 69 00 6e 00 73 00 65 00 61 00 72 00 63 00 68 00 } //1 &Pid=cwinsearch
		$a_00_3 = {4d 00 73 00 69 00 64 00 65 00 62 00 61 00 72 00 } //1 Msidebar
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}