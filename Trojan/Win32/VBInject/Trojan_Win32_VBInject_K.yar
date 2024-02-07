
rule Trojan_Win32_VBInject_K{
	meta:
		description = "Trojan:Win32/VBInject.K,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 45 73 70 61 63 69 6f 50 6f 69 73 6f 6e } //01 00  sEspacioPoison
		$a_01_1 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00  ShellExecuteA
		$a_01_2 = {4d 00 6f 00 64 00 4d 00 65 00 50 00 75 00 62 00 6c 00 69 00 63 00 6f 00 5c 00 53 00 74 00 75 00 23 00 62 00 5c 00 50 00 72 00 6f 00 79 00 65 00 63 00 74 00 6f 00 31 00 2e 00 76 00 62 00 70 00 } //01 00  ModMePublico\Stu#b\Proyecto1.vbp
		$a_01_3 = {43 00 6f 00 6d 00 70 00 61 00 6e 00 79 00 4e 00 61 00 6d 00 65 00 00 00 00 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 4c 00 6f 00 61 00 64 00 65 00 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}