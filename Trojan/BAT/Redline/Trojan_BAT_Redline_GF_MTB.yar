
rule Trojan_BAT_Redline_GF_MTB{
	meta:
		description = "Trojan:BAT/Redline.GF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 0c 00 00 0a 00 "
		
	strings :
		$a_02_0 = {43 00 3a 00 5c 00 57 00 69 00 6e 00 64 00 90 02 14 6f 00 77 00 73 00 5c 00 4d 00 69 00 63 00 72 00 90 02 14 6f 00 73 00 6f 00 66 00 74 00 2e 00 4e 00 90 02 14 45 00 54 00 5c 00 46 00 72 00 61 00 6d 00 90 02 14 65 00 77 00 6f 00 72 00 6b 00 5c 00 76 00 34 00 2e 00 30 00 2e 00 33 00 30 00 90 02 14 33 00 31 00 39 00 5c 00 41 00 64 00 64 00 49 00 6e 00 90 02 14 72 00 6f 00 63 00 65 00 73 00 73 00 33 00 32 00 2e 00 65 00 78 00 65 00 90 00 } //05 00 
		$a_81_1 = {2e 4e 50 52 4f 54 45 43 54 45 54 } //05 00 
		$a_80_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //FromBase64String  01 00 
		$a_80_3 = {65 5f 6d 61 67 69 63 } //e_magic  01 00 
		$a_80_4 = {65 5f 6c 66 61 6e 65 77 } //e_lfanew  01 00 
		$a_80_5 = {68 50 72 6f 63 65 73 73 } //hProcess  01 00 
		$a_80_6 = {56 69 72 74 75 61 6c 41 64 64 72 65 73 73 } //VirtualAddress  01 00 
		$a_80_7 = {70 72 6f 63 4e 61 6d 65 } //procName  01 00 
		$a_80_8 = {66 69 6c 65 4e 61 6d 65 } //fileName  01 00 
		$a_80_9 = {41 64 64 72 65 73 73 4f 66 45 6e 74 72 79 50 6f 69 6e 74 } //AddressOfEntryPoint  01 00 
		$a_80_10 = {45 78 70 65 63 74 31 30 30 43 6f 6e 74 69 6e 75 65 } //Expect100Continue  01 00 
		$a_80_11 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //DownloadString  00 00 
	condition:
		any of ($a_*)
 
}