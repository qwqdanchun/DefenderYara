
rule Backdoor_Win32_Rinorp_A{
	meta:
		description = "Backdoor:Win32/Rinorp.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {4d 6f 64 75 6c 65 31 90 02 04 46 6f 72 6d 31 90 02 04 44 69 61 6c 65 72 90 00 } //01 00 
		$a_00_1 = {63 6d 64 43 72 65 61 74 65 43 6f 6e 6e 65 63 74 69 6f 6e 5f 43 6c 69 63 6b } //01 00  cmdCreateConnection_Click
		$a_00_2 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 46 00 61 00 76 00 6f 00 72 00 69 00 74 00 65 00 73 00 5c 00 54 00 6f 00 74 00 61 00 6c 00 6c 00 79 00 20 00 46 00 72 00 65 00 65 00 20 00 58 00 58 00 58 00 2e 00 75 00 72 00 6c 00 } //01 00  Windows\Favorites\Totally Free XXX.url
		$a_00_3 = {43 00 6c 00 69 00 63 00 6b 00 20 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 } //01 00  Click Connect
		$a_00_4 = {61 00 63 00 63 00 65 00 73 00 73 00 20 00 74 00 6f 00 20 00 74 00 68 00 65 00 20 00 68 00 6f 00 74 00 74 00 65 00 73 00 74 00 20 00 58 00 58 00 58 00 20 00 70 00 6f 00 72 00 6e 00 } //00 00  access to the hottest XXX porn
	condition:
		any of ($a_*)
 
}