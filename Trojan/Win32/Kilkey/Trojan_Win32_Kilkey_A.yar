
rule Trojan_Win32_Kilkey_A{
	meta:
		description = "Trojan:Win32/Kilkey.A,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 03 00 00 0a 00 "
		
	strings :
		$a_02_0 = {89 45 fc 6a 00 6a 00 6a 00 6a 00 6a 00 68 90 01 04 6a 00 6a 02 6a 10 68 10 00 01 00 68 90 01 04 68 90 01 04 ff 75 fc e8 18 01 00 00 0b c0 74 17 90 00 } //0a 00 
		$a_02_1 = {77 69 6e 78 70 73 68 90 02 04 7a 7a 7a 70 73 68 00 63 3a 5c 77 69 6e 90 00 } //0a 00 
		$a_00_2 = {69 66 72 61 6d 65 3e 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 6b 69 6c 6c 6b 65 79 } //00 00 
	condition:
		any of ($a_*)
 
}