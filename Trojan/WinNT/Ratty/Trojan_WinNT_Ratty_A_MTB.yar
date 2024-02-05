
rule Trojan_WinNT_Ratty_A_MTB{
	meta:
		description = "Trojan:WinNT/Ratty.A!MTB,SIGNATURE_TYPE_JAVAHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {64 65 2f 73 6f 67 6f 6d 6e 2f 72 61 74 2f 67 75 69 2f 73 65 72 76 65 72 2f 52 61 74 74 79 47 75 69 43 6f 6e 74 72 6f 6c 6c 65 72 } //01 00 
		$a_00_1 = {6a 72 65 31 33 76 33 62 72 69 64 67 65 2e 6a 61 72 } //01 00 
		$a_00_2 = {43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 20 2f 76 20 22 41 64 6f 62 65 20 4a 61 76 61 20 62 72 69 64 67 65 22 20 2f 64 } //00 00 
	condition:
		any of ($a_*)
 
}