
rule Ransom_Win64_Weelsof_A{
	meta:
		description = "Ransom:Win64/Weelsof.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {63 6f 6e 66 69 67 5f 66 69 6c 65 5f 90 02 05 6e 61 6d 65 5f 73 65 65 64 90 00 } //01 00 
		$a_01_1 = {6c 6f 63 6b 65 72 5f 66 69 6c 65 5f 6e 61 6d 65 } //01 00  locker_file_name
		$a_01_2 = {63 6f 72 65 5f 72 65 6d 6f 74 65 5f 65 6e 74 72 79 } //01 00  core_remote_entry
		$a_01_3 = {2f 67 65 74 5f 64 73 6e 2e 70 68 70 } //01 00  /get_dsn.php
		$a_01_4 = {2f 67 65 74 5f 63 6f 63 65 2e 70 68 70 } //01 00  /get_coce.php
		$a_03_5 = {2f 74 6f 70 69 63 2e 70 68 70 00 90 02 04 00 41 43 43 45 50 54 45 44 00 90 00 } //06 00 
		$a_03_6 = {48 8b d9 c7 40 90 01 01 75 00 73 00 c7 40 90 01 01 65 00 72 00 c7 40 90 01 01 33 00 32 00 c7 40 90 01 01 2e 00 64 00 c7 40 90 01 01 6c 00 6c 00 48 83 79 90 00 } //01 00 
		$a_00_7 = {5d 04 00 00 01 cd 02 80 } //5c 23 
	condition:
		any of ($a_*)
 
}