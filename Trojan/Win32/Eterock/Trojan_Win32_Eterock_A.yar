
rule Trojan_Win32_Eterock_A{
	meta:
		description = "Trojan:Win32/Eterock.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  \svchost.exe
		$a_01_1 = {5c 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 64 00 2e 00 66 00 67 00 68 00 } //01 00  \installed.fgh
		$a_01_2 = {5c 00 68 00 69 00 64 00 64 00 65 00 6e 00 5f 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 5c 00 68 00 6f 00 73 00 74 00 6e 00 61 00 6d 00 65 00 } //01 00  \hidden_service\hostname
		$a_03_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 20 2e 00 6f 00 6e 00 69 00 6f 00 6e 00 90 00 } //01 00 
		$a_01_4 = {4d 00 61 00 6c 00 77 00 61 00 72 00 65 00 20 00 53 00 4d 00 42 00 20 00 42 00 6c 00 6f 00 63 00 6b 00 } //00 00  Malware SMB Block
	condition:
		any of ($a_*)
 
}