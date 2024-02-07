
rule Trojan_Win32_Medfos_V_dll{
	meta:
		description = "Trojan:Win32/Medfos.V!dll,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {75 0a 68 2f 75 00 00 e9 86 00 00 00 b9 4b 00 00 00 33 c0 8d } //01 00 
		$a_01_1 = {63 6f 6e 69 6d 65 2e 69 6e 66 00 } //01 00 
		$a_01_2 = {5c 55 70 64 61 74 61 2e 6c 6e 6b 00 } //01 00 
		$a_01_3 = {68 74 74 70 73 2f 2f 25 73 3a 25 64 2f 57 69 6e 44 61 74 61 25 64 2e 44 6c 6c 3f 48 45 4c 4f 2d 53 54 58 2d 32 2a 25 73 2a 25 73 2a 25 73 24 } //01 00  https//%s:%d/WinData%d.Dll?HELO-STX-2*%s*%s*%s$
		$a_01_4 = {5c 57 69 6e 44 61 74 61 2e 64 6c 6c 00 } //01 00 
		$a_01_5 = {31 31 31 2e 31 31 31 2e 31 31 31 2e 31 31 31 00 } //01 00  ㄱ⸱ㄱ⸱ㄱ⸱ㄱ1
		$a_01_6 = {2f 57 69 6e 44 61 74 61 25 64 2e 64 6c 6c 3f 44 41 54 41 2d 53 54 58 2d 32 2a 30 78 25 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}