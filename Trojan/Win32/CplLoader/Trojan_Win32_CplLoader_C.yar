
rule Trojan_Win32_CplLoader_C{
	meta:
		description = "Trojan:Win32/CplLoader.C,SIGNATURE_TYPE_CMDHSTR_EXT,02 00 02 00 0b 00 00 02 00 "
		
	strings :
		$a_00_0 = {5c 00 63 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 2e 00 65 00 78 00 65 00 00 00 } //f6 ff 
		$a_00_1 = {69 00 6e 00 70 00 75 00 74 00 2e 00 64 00 6c 00 6c 00 } //f6 ff 
		$a_00_2 = {20 00 50 00 72 00 69 00 6e 00 74 00 65 00 72 00 73 00 } //f6 ff 
		$a_00_3 = {20 00 53 00 59 00 53 00 54 00 45 00 4d 00 } //f6 ff 
		$a_00_4 = {2f 00 6e 00 61 00 6d 00 65 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 } //f6 ff 
		$a_00_5 = {20 00 64 00 65 00 73 00 6b 00 2e 00 63 00 70 00 6c 00 } //f6 ff 
		$a_00_6 = {4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 20 00 61 00 6e 00 64 00 20 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 5c 00 4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 20 00 61 00 6e 00 64 00 20 00 53 00 68 00 61 00 72 00 69 00 6e 00 67 00 20 00 43 00 65 00 6e 00 74 00 65 00 72 00 } //f6 ff 
		$a_00_7 = {69 00 6e 00 65 00 74 00 63 00 70 00 6c 00 2e 00 63 00 70 00 6c 00 } //f6 ff 
		$a_00_8 = {6b 00 65 00 79 00 6d 00 67 00 72 00 2e 00 64 00 6c 00 6c 00 } //f6 ff 
		$a_00_9 = {6d 00 6d 00 73 00 79 00 73 00 2e 00 63 00 70 00 6c 00 } //f6 ff 
		$a_00_10 = {4d 00 61 00 74 00 68 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 50 00 61 00 6e 00 65 00 6c 00 2e 00 63 00 70 00 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}