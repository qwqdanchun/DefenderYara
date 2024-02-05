
rule Trojan_Win32_Injector_MBK_MTB{
	meta:
		description = "Trojan:Win32/Injector.MBK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_02_0 = {4a 00 75 00 6e 00 6b 00 20 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 43 00 6f 00 6d 00 70 00 72 00 65 00 68 00 65 00 6e 00 73 00 90 02 30 5c 00 73 00 77 00 61 00 70 00 72 00 2e 00 76 00 62 00 70 00 90 00 } //01 00 
		$a_00_1 = {43 00 72 00 79 00 70 00 74 00 6f 00 50 00 69 00 63 00 } //01 00 
		$a_02_2 = {41 00 70 00 70 00 44 00 61 00 74 00 61 00 90 02 10 57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 73 00 68 00 65 00 6c 00 6c 00 90 00 } //01 00 
		$a_00_3 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00 
		$a_02_4 = {52 00 65 00 67 00 57 00 72 00 69 00 74 00 65 00 90 02 10 73 00 65 00 6c 00 66 00 90 00 } //01 00 
		$a_00_5 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4e 00 45 00 54 00 5c 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 5c 00 76 00 34 00 2e 00 30 00 2e 00 33 00 30 00 33 00 31 00 39 00 5c 00 52 00 65 00 67 00 53 00 76 00 63 00 73 00 2e 00 45 00 58 00 45 00 } //00 00 
	condition:
		any of ($a_*)
 
}