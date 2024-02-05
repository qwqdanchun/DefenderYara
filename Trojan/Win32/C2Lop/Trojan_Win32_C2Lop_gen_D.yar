
rule Trojan_Win32_C2Lop_gen_D{
	meta:
		description = "Trojan:Win32/C2Lop.gen!D,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {ff 37 00 00 90 02 20 90 03 01 02 7d 0f 8d 90 02 20 7f 02 00 00 90 02 20 90 03 01 02 7d 0f 8d 90 02 20 7f 90 02 20 90 03 01 02 7f 0f 8f 90 00 } //0a 00 
		$a_01_1 = {c2 1c 00 6a 05 59 eb 03 6a 57 59 e8 58 fd ff ff eb ec 52 74 6c 4e 74 53 74 61 74 75 73 54 6f 44 6f 73 45 72 72 6f 72 00 4e 74 41 6c 6c 6f 63 61 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 00 4e 74 46 72 65 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 00 4e 74 4f 70 65 6e 54 68 72 65 61 64 00 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 00 53 65 74 54 68 72 65 61 64 41 66 66 69 6e 69 74 79 4d 61 73 6b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}