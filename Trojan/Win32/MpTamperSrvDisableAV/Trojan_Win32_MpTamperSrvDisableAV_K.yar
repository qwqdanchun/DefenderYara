
rule Trojan_Win32_MpTamperSrvDisableAV_K{
	meta:
		description = "Trojan:Win32/MpTamperSrvDisableAV.K,SIGNATURE_TYPE_CMDHSTR_EXT,01 00 01 00 08 00 00 01 00 "
		
	strings :
		$a_02_0 = {47 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 57 00 69 00 6e 00 44 00 65 00 66 00 65 00 6e 00 64 00 20 00 7c 00 20 00 53 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 90 02 ff 2d 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 54 00 79 00 70 00 65 00 20 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 64 00 20 00 90 00 } //01 00 
		$a_02_1 = {47 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 2d 00 4e 00 61 00 6d 00 65 00 20 00 57 00 69 00 6e 00 44 00 65 00 66 00 65 00 6e 00 64 00 20 00 7c 00 20 00 53 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 90 02 ff 2d 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 54 00 79 00 70 00 65 00 20 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 64 00 90 00 } //01 00 
		$a_02_2 = {47 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 7c 00 20 00 53 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 90 02 ff 2d 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 54 00 79 00 70 00 65 00 20 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 64 00 90 00 } //01 00 
		$a_02_3 = {47 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 2d 00 44 00 69 00 73 00 70 00 6c 00 61 00 79 00 4e 00 61 00 6d 00 65 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 7c 00 20 00 53 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 90 02 ff 2d 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 54 00 79 00 70 00 65 00 20 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 64 00 90 00 } //01 00 
		$a_02_4 = {47 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 57 00 69 00 6e 00 44 00 65 00 66 00 65 00 6e 00 64 00 20 00 7c 00 20 00 53 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 90 02 ff 2d 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 54 00 79 00 70 00 65 00 20 00 4d 00 61 00 6e 00 75 00 61 00 6c 00 20 00 90 00 } //01 00 
		$a_02_5 = {47 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 2d 00 4e 00 61 00 6d 00 65 00 20 00 57 00 69 00 6e 00 44 00 65 00 66 00 65 00 6e 00 64 00 20 00 7c 00 20 00 53 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 90 02 ff 2d 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 54 00 79 00 70 00 65 00 20 00 4d 00 61 00 6e 00 75 00 61 00 6c 00 90 00 } //01 00 
		$a_02_6 = {47 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 7c 00 20 00 53 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 90 02 ff 2d 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 54 00 79 00 70 00 65 00 20 00 4d 00 61 00 6e 00 75 00 61 00 6c 00 90 00 } //01 00 
		$a_02_7 = {47 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 2d 00 44 00 69 00 73 00 70 00 6c 00 61 00 79 00 4e 00 61 00 6d 00 65 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 7c 00 20 00 53 00 65 00 74 00 2d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 90 02 ff 2d 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 54 00 79 00 70 00 65 00 20 00 4d 00 61 00 6e 00 75 00 61 00 6c 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}