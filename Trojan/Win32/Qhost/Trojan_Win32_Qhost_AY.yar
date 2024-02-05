
rule Trojan_Win32_Qhost_AY{
	meta:
		description = "Trojan:Win32/Qhost.AY,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 06 00 00 0a 00 "
		
	strings :
		$a_00_0 = {47 65 74 54 65 6d 70 50 61 74 68 41 00 } //01 00 
		$a_02_1 = {6d 61 69 6c 2e 72 75 90 02 02 3e 3e 90 02 02 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 09 30 00 90 02 24 65 63 68 6f 90 05 0f 05 20 2e 30 2d 39 90 00 } //01 00 
		$a_02_2 = {72 61 6d 62 6c 65 72 2e 72 75 90 02 02 3e 3e 90 02 02 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 09 30 00 90 02 24 65 63 68 6f 90 05 0f 05 20 2e 30 2d 39 90 00 } //01 00 
		$a_02_3 = {79 61 6e 64 65 78 2e 72 75 90 02 02 3e 3e 90 02 02 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 09 30 00 90 02 24 65 63 68 6f 90 05 0f 05 20 2e 30 2d 39 90 00 } //01 00 
		$a_02_4 = {76 6b 6f 6e 74 61 6b 74 65 2e 72 75 90 02 02 3e 3e 90 02 02 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 09 30 00 90 02 24 65 63 68 6f 90 05 0f 05 20 2e 30 2d 39 90 00 } //01 00 
		$a_02_5 = {6f 64 6e 6f 6b 6c 61 73 90 02 01 6e 69 6b 69 2e 72 75 90 02 02 3e 3e 90 02 02 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 90 09 30 00 90 02 24 65 63 68 6f 90 05 0f 05 20 2e 30 2d 39 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}