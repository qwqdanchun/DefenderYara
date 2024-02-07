
rule Backdoor_Win32_Hikiti_M_dha{
	meta:
		description = "Backdoor:Win32/Hikiti.M!dha,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 08 00 00 14 00 "
		
	strings :
		$a_02_0 = {68 69 6b 69 74 90 02 20 2e 70 64 62 90 00 } //14 00 
		$a_02_1 = {68 00 69 00 6b 00 69 00 74 00 90 02 30 2e 00 70 00 64 00 62 00 90 00 } //14 00 
		$a_02_2 = {25 00 73 00 2e 00 63 00 6f 00 6e 00 66 00 90 02 08 68 00 69 00 74 00 78 00 90 00 } //01 00 
		$a_00_3 = {77 00 37 00 66 00 77 00 2e 00 73 00 79 00 73 00 } //01 00  w7fw.sys
		$a_00_4 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 77 00 37 00 66 00 77 00 } //01 00  \Device\w7fw
		$a_00_5 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 25 00 73 00 5f 00 5f 00 48 00 49 00 44 00 45 00 5f 00 5f 00 } //01 00  Global\%s__HIDE__
		$a_00_6 = {62 00 61 00 63 00 6b 00 64 00 6f 00 6f 00 72 00 20 00 63 00 6c 00 6f 00 73 00 65 00 64 00 } //01 00  backdoor closed
		$a_00_7 = {2a 00 2a 00 2a 00 2a 00 2a 00 48 00 69 00 64 00 64 00 65 00 6e 00 3a 00 } //00 00  *****Hidden:
		$a_00_8 = {5d 04 00 00 4d 32 03 80 5c 28 00 00 4e 32 03 80 00 00 01 00 06 } //00 12 
	condition:
		any of ($a_*)
 
}