
rule Trojan_Win32_Powessere_X{
	meta:
		description = "Trojan:Win32/Powessere.X,SIGNATURE_TYPE_CMDHSTR_EXT,0b 00 0b 00 04 00 00 "
		
	strings :
		$a_02_0 = {6a 00 61 00 76 00 61 00 73 00 63 00 72 00 69 00 70 00 74 00 3a 00 90 02 30 6d 00 73 00 68 00 74 00 6d 00 6c 00 2c 00 23 00 31 00 33 00 35 00 90 00 } //10
		$a_02_1 = {76 00 62 00 73 00 63 00 72 00 69 00 70 00 74 00 3a 00 90 02 30 6d 00 73 00 68 00 74 00 6d 00 6c 00 2c 00 23 00 31 00 33 00 35 00 90 00 } //10
		$a_00_2 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 73 00 68 00 65 00 6c 00 6c 00 } //1 wscript.shell
		$a_00_3 = {2e 00 72 00 75 00 6e 00 28 00 } //1 .run(
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=11
 
}