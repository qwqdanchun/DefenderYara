
rule Trojan_Win32_Emotet_O_MTB{
	meta:
		description = "Trojan:Win32/Emotet.O!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 07 00 00 02 00 "
		
	strings :
		$a_00_0 = {43 4c 53 49 44 5c 25 31 5c 49 6e 50 72 6f 63 53 65 72 76 65 72 33 32 } //02 00 
		$a_00_1 = {65 47 4e 6b 5a 67 3d } //02 00 
		$a_02_2 = {4e 6f 52 75 6e 90 02 10 4e 6f 44 72 69 76 65 73 90 02 10 52 65 73 74 72 69 63 74 52 75 6e 90 02 10 4e 6f 4e 65 74 43 6f 6e 6e 65 63 74 44 69 73 63 6f 6e 6e 65 63 74 90 02 10 4e 6f 52 65 63 65 6e 74 44 6f 63 73 48 69 73 74 6f 72 79 90 02 10 4e 6f 43 6c 6f 73 65 90 00 } //02 00 
		$a_00_3 = {43 52 59 50 54 33 32 2e 44 4c 4c 00 43 72 79 70 74 53 74 72 69 6e 67 54 6f 42 69 6e 61 72 79 41 } //01 00 
		$a_00_4 = {4b 00 45 00 52 00 4e 00 45 00 4c 00 33 00 32 00 2e 00 44 00 4c 00 4c 00 00 00 00 00 56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 4e 75 6d 61 } //01 00 
		$a_00_5 = {4b 00 45 00 52 00 4e 00 45 00 4c 00 33 00 32 00 2e 00 44 00 4c 00 4c 00 00 00 00 00 44 65 63 6f 64 65 50 6f 69 6e 74 65 72 } //05 00 
		$a_00_6 = {6a 40 68 00 30 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}