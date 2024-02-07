
rule Trojan_Win32_VB_JK{
	meta:
		description = "Trojan:Win32/VB.JK,SIGNATURE_TYPE_PEHSTR,20 00 1f 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {44 00 3a 00 5c 00 4d 00 79 00 53 00 6f 00 66 00 74 00 5c 00 44 00 6c 00 6c 00 68 00 6f 00 73 00 74 00 5c 00 44 00 6c 00 6c 00 68 00 6f 00 73 00 74 00 2e 00 76 00 62 00 70 00 } //0a 00  D:\MySoft\Dllhost\Dllhost.vbp
		$a_01_1 = {2f 00 6c 00 69 00 6a 00 69 00 61 00 6e 00 67 00 2e 00 61 00 73 00 70 00 3f 00 73 00 3d 00 } //0a 00  /lijiang.asp?s=
		$a_01_2 = {64 00 6c 00 6c 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  dllhost.exe
		$a_01_3 = {76 00 6e 00 65 00 74 00 2e 00 63 00 6e 00 2c 00 63 00 6e 00 62 00 62 00 2e 00 63 00 6f 00 6d 00 2e 00 63 00 6e 00 2c 00 6f 00 70 00 65 00 6e 00 64 00 6e 00 73 00 2e 00 63 00 6f 00 6d 00 } //01 00  vnet.cn,cnbb.com.cn,opendns.com
		$a_01_4 = {76 62 36 63 68 73 2e 64 6c 6c } //00 00  vb6chs.dll
	condition:
		any of ($a_*)
 
}