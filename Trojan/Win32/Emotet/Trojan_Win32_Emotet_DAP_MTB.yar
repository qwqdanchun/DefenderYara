
rule Trojan_Win32_Emotet_DAP_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DAP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 06 00 00 0a 00 "
		
	strings :
		$a_02_0 = {55 53 6a 40 68 90 01 04 68 90 01 04 53 2d 90 1b 01 52 89 44 24 60 ff d6 8b 6c 24 4c 8b f8 8b 44 24 48 68 90 1b 01 03 c5 50 57 ff 54 24 78 8b 4c 24 54 8b 54 24 5c 83 c4 0c 53 6a 40 68 90 1b 00 51 53 52 ff d6 8b f0 8b 44 24 48 50 55 56 ff 54 24 78 8b 54 24 54 6a 27 90 00 } //01 00 
		$a_00_1 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 4e 75 6d 61 } //01 00  VirtualAllocExNuma
		$a_00_2 = {6d 65 6d 63 70 79 } //01 00  memcpy
		$a_00_3 = {43 00 6f 00 70 00 79 00 46 00 69 00 6c 00 65 00 57 00 } //01 00  CopyFileW
		$a_00_4 = {53 00 68 00 65 00 6c 00 6c 00 45 00 78 00 65 00 63 00 75 00 74 00 65 00 57 00 } //01 00  ShellExecuteW
		$a_00_5 = {43 00 72 00 79 00 70 00 74 00 53 00 74 00 72 00 69 00 6e 00 67 00 54 00 6f 00 42 00 69 00 6e 00 61 00 72 00 79 00 41 00 } //00 00  CryptStringToBinaryA
	condition:
		any of ($a_*)
 
}