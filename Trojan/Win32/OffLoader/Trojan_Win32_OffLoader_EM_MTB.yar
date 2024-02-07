
rule Trojan_Win32_OffLoader_EM_MTB{
	meta:
		description = "Trojan:Win32/OffLoader.EM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 09 00 "
		
	strings :
		$a_01_0 = {61 00 61 00 2e 00 6c 00 6f 00 63 00 6b 00 73 00 74 00 61 00 72 00 74 00 2e 00 68 00 6f 00 73 00 74 00 2f 00 77 00 77 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 37 } //01 00 
		$a_01_1 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65 00 } //00 00  server\share
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_OffLoader_EM_MTB_2{
	meta:
		description = "Trojan:Win32/OffLoader.EM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 0a 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 66 00 72 00 75 00 69 00 74 00 62 00 75 00 6c 00 62 00 2e 00 78 00 79 00 7a 00 2f 00 77 00 77 00 2e 00 70 00 68 00 70 } //01 00 
		$a_01_1 = {5c 00 5c 00 73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65 00 } //01 00  \\server\share
		$a_01_2 = {72 00 65 00 73 00 74 00 61 00 72 00 74 00 20 00 74 00 68 00 65 00 20 00 63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 6e 00 6f 00 77 00 } //00 00  restart the computer now
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_OffLoader_EM_MTB_3{
	meta:
		description = "Trojan:Win32/OffLoader.EM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 09 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 61 00 61 00 2e 00 6c 00 6f 00 63 00 6b 00 73 00 74 00 61 00 72 00 74 00 2e 00 68 00 6f 00 73 00 74 00 2f 00 77 00 77 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 32 00 32 00 36 00 38 00 26 00 74 00 3d 00 34 00 36 00 31 00 35 00 34 00 33 00 33 00 34 00 26 00 74 00 69 00 74 00 6c 00 65 00 3d 00 51 00 57 00 4e 00 30 00 61 00 58 00 5a 00 68 00 64 00 47 00 39 00 79 00 49 00 43 00 73 00 67 00 51 00 33 00 4a 00 68 00 59 00 32 00 73 00 67 00 4b 00 79 00 42 00 54 00 5a 00 58 00 4a 00 70 00 59 00 57 00 77 00 67 00 4b 00 79 00 42 00 4c 00 5a 00 58 00 6b 00 3d } //01 00 
		$a_01_1 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65 00 } //00 00  server\share
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_OffLoader_EM_MTB_4{
	meta:
		description = "Trojan:Win32/OffLoader.EM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 70 00 72 00 69 00 63 00 65 00 6d 00 61 00 72 00 6b 00 65 00 74 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 72 00 65 00 71 00 2e 00 70 00 68 00 70 } //0a 00 
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 66 00 72 00 75 00 69 00 74 00 62 00 75 00 6c 00 62 00 2e 00 78 00 79 00 7a 00 2f 00 72 00 65 00 71 00 73 00 2e 00 70 00 68 00 70 } //0a 00 
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 34 00 35 00 2e 00 31 00 32 00 2e 00 32 00 35 00 33 00 2e 00 37 00 34 00 2f 00 70 00 69 00 6e 00 65 00 61 00 70 00 70 00 6c 00 65 00 2e 00 70 00 68 00 70 } //01 00 
		$a_01_3 = {73 00 79 00 73 00 75 00 73 00 65 00 72 00 69 00 6e 00 66 00 6f 00 6e 00 61 00 6d 00 65 00 } //01 00  sysuserinfoname
		$a_01_4 = {73 00 79 00 73 00 75 00 73 00 65 00 72 00 69 00 6e 00 66 00 6f 00 6f 00 72 00 67 00 } //01 00  sysuserinfoorg
		$a_01_5 = {2a 00 2e 00 65 00 78 00 65 00 2c 00 2a 00 2e 00 64 00 6c 00 6c 00 2c 00 2a 00 2e 00 63 00 68 00 6d 00 } //00 00  *.exe,*.dll,*.chm
	condition:
		any of ($a_*)
 
}