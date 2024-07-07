
rule Trojan_Win32_Fakon_A{
	meta:
		description = "Trojan:Win32/Fakon.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 "
		
	strings :
		$a_02_0 = {57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 90 02 08 22 20 61 75 74 6f 90 00 } //1
		$a_00_1 = {5c 53 65 72 76 63 65 5c 72 65 6c 65 61 73 65 5c 53 65 72 76 63 65 2e 70 64 62 } //1 \Servce\release\Servce.pdb
		$a_00_2 = {5c 53 79 73 70 69 61 6f 5c 52 65 6c 65 61 73 65 5c 53 79 73 70 69 61 6f 2e 70 64 62 } //1 \Syspiao\Release\Syspiao.pdb
		$a_00_3 = {26 70 61 79 69 64 3d } //1 &payid=
		$a_00_4 = {26 00 48 00 69 00 64 00 65 00 } //1 &Hide
		$a_00_5 = {4d 00 61 00 69 00 6c 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 20 00 44 00 4c 00 4c 00 20 00 69 00 73 00 20 00 69 00 6e 00 76 00 61 00 6c 00 69 00 64 00 } //1 Mail system DLL is invalid
		$a_00_6 = {53 00 65 00 72 00 76 00 63 00 65 00 2e 00 65 00 78 00 65 00 } //1 Servce.exe
		$a_00_7 = {25 00 31 00 3a 00 20 00 25 00 32 00 } //1 %1: %2
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=7
 
}