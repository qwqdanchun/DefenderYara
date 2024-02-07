
rule TrojanProxy_Win32_Bunitu_M{
	meta:
		description = "TrojanProxy:Win32/Bunitu.M,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {fe 49 02 c6 41 0e 32 c6 41 0c 33 80 29 07 } //01 00 
		$a_01_1 = {74 72 65 77 2f 31 2e 30 20 32 30 30 20 4f 4b } //01 00  trew/1.0 200 OK
		$a_03_2 = {75 72 73 65 6e 74 90 01 02 72 73 69 6f 6e 90 01 06 68 6f 6e 90 01 03 74 69 66 79 5c 90 00 } //01 00 
		$a_03_3 = {5c 58 68 61 72 64 64 90 01 01 63 63 65 73 73 5c 53 90 01 01 72 61 6d 65 74 65 72 73 5c 47 69 72 65 77 61 6c 6c 50 6f 6c 69 63 79 5c 53 74 61 6e 64 61 72 64 50 72 6f 66 69 6c 65 5c 90 00 } //00 00 
		$a_00_4 = {5d 04 00 } //00 04 
	condition:
		any of ($a_*)
 
}