
rule Trojan_Win32_VB_AAD{
	meta:
		description = "Trojan:Win32/VB.AAD,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 08 00 00 0a 00 "
		
	strings :
		$a_00_0 = {5c 00 42 00 75 00 61 00 74 00 20 00 56 00 69 00 72 00 75 00 73 00 5c 00 56 00 69 00 72 00 75 00 73 00 20 00 56 00 42 00 42 00 45 00 47 00 4f 00 5c 00 4b 00 6f 00 6c 00 61 00 62 00 6f 00 72 00 61 00 73 00 69 00 20 00 62 00 61 00 72 00 75 00 20 00 50 00 65 00 72 00 61 00 6e 00 67 00 56 00 69 00 72 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //05 00  \Buat Virus\Virus VBBEGO\Kolaborasi baru PerangVir\Project1.vbp
		$a_00_1 = {47 00 61 00 6d 00 65 00 20 00 50 00 65 00 72 00 61 00 6e 00 67 00 20 00 44 00 75 00 6e 00 69 00 61 00 20 00 49 00 49 00 2e 00 65 00 78 00 65 00 } //05 00  Game Perang Dunia II.exe
		$a_00_2 = {4b 00 61 00 6c 00 6f 00 20 00 41 00 6e 00 64 00 61 00 20 00 53 00 61 00 64 00 61 00 72 00 2c 00 20 00 4b 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 41 00 6e 00 64 00 61 00 20 00 61 00 6b 00 61 00 6e 00 20 00 74 00 65 00 74 00 61 00 70 00 20 00 41 00 6d 00 61 00 6e 00 20 00 64 00 61 00 72 00 69 00 20 00 56 00 69 00 72 00 75 00 73 00 20 00 4d 00 6f 00 72 00 61 00 6c 00 2e 00 } //01 00  Kalo Anda Sadar, Komputer Anda akan tetap Aman dari Virus Moral.
		$a_00_3 = {54 65 72 6d 69 6e 61 74 65 50 72 6f 63 65 73 73 } //01 00  TerminateProcess
		$a_00_4 = {4f 70 65 6e 50 72 6f 63 65 73 73 } //01 00  OpenProcess
		$a_00_5 = {50 72 6f 63 65 73 73 33 32 46 69 72 73 74 } //01 00  Process32First
		$a_00_6 = {50 72 6f 63 65 73 73 33 32 4e 65 78 74 } //01 00  Process32Next
		$a_01_7 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //00 00  CreateToolhelp32Snapshot
	condition:
		any of ($a_*)
 
}