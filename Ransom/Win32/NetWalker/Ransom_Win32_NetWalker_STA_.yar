
rule Ransom_Win32_NetWalker_STA_{
	meta:
		description = "Ransom:Win32/NetWalker.STA!!NetWalker.STE,SIGNATURE_TYPE_ARHSTR_EXT,0a 00 0a 00 07 00 00 03 00 "
		
	strings :
		$a_00_0 = {65 78 70 61 6e 64 20 33 32 2d 62 79 74 65 20 6b 65 78 70 61 6e 64 20 31 36 2d 62 79 74 65 20 6b } //03 00  expand 32-byte kexpand 16-byte k
		$a_00_1 = {59 6f 75 72 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 } //03 00  Your files are encrypted
		$a_02_2 = {20 25 64 0d 66 c7 44 90 01 02 0a 00 c7 44 90 01 02 64 65 6c 20 c7 44 90 01 02 22 25 77 73 c7 44 90 01 02 22 0d 0a 00 c7 44 90 01 02 64 65 6c 20 c7 44 90 01 02 25 25 30 0d 66 c7 44 90 01 02 0a 00 90 00 } //03 00 
		$a_02_3 = {6f 00 74 00 c7 44 90 01 02 65 00 70 00 c7 44 90 01 02 61 00 64 00 c7 44 90 01 02 2e 00 65 00 c7 44 90 01 02 78 00 65 00 90 00 } //03 00 
		$a_02_4 = {7b 6f 6e 69 c7 44 90 01 02 6f 6e 31 7d c6 44 90 01 02 00 c7 44 90 01 02 7b 6f 6e 69 c7 44 90 01 02 6f 6e 32 7d c6 44 90 01 02 00 c7 44 90 01 02 7b 63 6f 64 90 00 } //05 00 
		$a_03_5 = {0f b6 c2 03 c8 0f b6 c1 8b 4c 24 90 01 01 0f b6 04 90 01 01 30 04 0e 46 8b 4c 24 90 01 01 3b f5 72 90 0a c0 00 8d 90 01 01 01 0f b6 90 01 01 8a 14 90 01 01 0f b6 c2 03 c1 0f b6 c8 89 4c 24 1c 0f b6 04 90 01 01 88 04 90 01 01 88 14 90 01 01 0f b6 0c 90 00 } //05 00 
		$a_02_6 = {5c 00 76 00 c7 44 90 01 02 73 00 73 00 c7 44 90 01 02 61 00 64 00 c7 44 90 01 02 6d 00 69 00 c7 44 90 01 02 6e 00 2e 00 c7 44 90 01 02 65 00 78 00 c7 44 90 01 02 65 00 00 00 c7 44 90 01 02 20 00 64 00 c7 44 90 01 02 65 00 6c 00 c7 44 90 01 02 65 00 74 00 c7 44 90 01 02 65 00 20 00 c7 44 90 01 02 73 00 68 00 c7 44 90 01 02 61 00 64 00 c7 44 90 01 02 6f 00 77 00 c7 44 90 01 02 73 00 20 00 c7 44 90 01 02 2f 00 61 00 c7 44 90 01 02 6c 00 6c 00 c7 44 90 01 02 20 00 2f 00 c7 44 90 01 02 71 00 75 00 c7 44 90 01 02 69 00 65 00 c7 44 90 01 02 74 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}