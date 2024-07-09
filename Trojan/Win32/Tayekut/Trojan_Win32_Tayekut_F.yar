
rule Trojan_Win32_Tayekut_F{
	meta:
		description = "Trojan:Win32/Tayekut.F,SIGNATURE_TYPE_CMDHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_02_0 = {6d 00 73 00 68 00 74 00 61 00 [0-10] 76 00 62 00 73 00 63 00 72 00 69 00 70 00 74 00 3a 00 } //1
		$a_00_1 = {63 00 72 00 65 00 61 00 74 00 65 00 6f 00 62 00 6a 00 65 00 63 00 74 00 28 00 } //1 createobject(
		$a_00_2 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 73 00 68 00 65 00 6c 00 6c 00 } //1 wscript.shell
		$a_00_3 = {2e 00 72 00 75 00 6e 00 } //1 .run
		$a_00_4 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //1 powershell
		$a_00_5 = {69 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 77 00 65 00 62 00 72 00 65 00 71 00 75 00 65 00 73 00 74 00 } //1 invoke-webrequest
		$a_00_6 = {3a 00 63 00 6c 00 6f 00 73 00 65 00 29 00 } //1 :close)
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=7
 
}