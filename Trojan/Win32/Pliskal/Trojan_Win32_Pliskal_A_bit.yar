
rule Trojan_Win32_Pliskal_A_bit{
	meta:
		description = "Trojan:Win32/Pliskal.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 04 00 "
		
	strings :
		$a_03_0 = {8b 45 08 89 04 24 e8 90 01 04 3b 45 90 01 01 76 3b 8b 5d 90 01 01 81 c3 90 01 04 8b 45 90 01 01 8b 4d 90 01 01 01 c1 8b 55 90 01 01 8d 45 90 01 01 89 45 90 01 01 89 d0 8b 75 90 01 01 ba 90 01 04 f7 36 0f b6 92 90 01 04 0f b6 01 28 d0 88 03 8d 45 90 01 01 ff 00 eb 90 00 } //01 00 
		$a_01_1 = {48 4b 45 59 5f 43 55 52 52 45 4e 54 5f 55 53 45 52 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00 
		$a_01_2 = {6e 65 74 73 68 20 61 64 76 66 69 72 65 77 61 6c 6c 20 66 69 72 65 77 61 6c 6c 20 61 64 64 20 72 75 6c 65 20 6e 61 6d 65 } //01 00 
		$a_01_3 = {3a 5a 6f 6e 65 2e 49 64 65 6e 74 69 66 69 65 72 } //00 00 
		$a_00_4 = {5d 04 00 00 } //7c af 
	condition:
		any of ($a_*)
 
}