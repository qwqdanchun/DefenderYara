
rule Backdoor_Win32_VB_OF{
	meta:
		description = "Backdoor:Win32/VB.OF,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {67 65 74 70 61 73 73 77 6f 64 3a 25 64 } //01 00  getpasswod:%d
		$a_01_1 = {78 78 78 69 73 74 65 72 78 78 78 76 69 63 65 78 78 6f 63 78 73 73 } //01 00  xxxisterxxxvicexxocxss
		$a_01_2 = {78 78 78 74 77 61 72 65 5c 78 78 78 72 6f 73 6f 66 74 5c 78 78 78 64 6f 77 73 5c 78 78 78 72 65 6e 74 56 65 72 73 69 6f 6e 5c 78 78 78 53 65 72 76 69 63 65 73 } //01 00  xxxtware\xxxrosoft\xxxdows\xxxrentVersion\xxxServices
		$a_01_3 = {63 3a 5c 73 65 72 76 69 64 6f 78 2e 6c 6f 67 } //00 00  c:\servidox.log
	condition:
		any of ($a_*)
 
}