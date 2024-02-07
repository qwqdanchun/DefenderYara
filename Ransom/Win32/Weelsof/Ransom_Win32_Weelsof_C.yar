
rule Ransom_Win32_Weelsof_C{
	meta:
		description = "Ransom:Win32/Weelsof.C,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {6c 6f 63 6b 65 72 5f 66 69 6c 65 6e 61 6d 65 } //01 00  locker_filename
		$a_00_1 = {63 66 67 5f 66 69 6c 65 5f 6c 6f 63 6b 5f 6e 61 6d 65 5f 73 65 65 64 } //01 00  cfg_file_lock_name_seed
		$a_00_2 = {63 61 6e 27 74 20 75 6e 70 61 63 6b 20 64 65 73 69 67 6e 20 61 72 63 68 69 76 65 } //01 00  can't unpack design archive
		$a_00_3 = {37 39 2e 37 36 2e 37 31 2e 31 36 36 } //01 00  79.76.71.166
		$a_00_4 = {24 5f 4e 4f 54 49 43 45 5f 42 4c 4f 43 4b 5f 25 64 5f } //01 00  $_NOTICE_BLOCK_%d_
		$a_00_5 = {24 5f 45 52 52 5f 4d 53 47 5f 25 64 5f } //01 00  $_ERR_MSG_%d_
		$a_00_6 = {24 5f 4f 4b 5f 4d 53 47 5f 25 64 5f } //01 00  $_OK_MSG_%d_
		$a_00_7 = {24 5f 49 50 5f 41 44 44 52 5f 24 } //04 00  $_IP_ADDR_$
		$a_03_8 = {fe c2 0f b6 f2 88 90 90 00 01 00 00 0f b6 14 06 00 90 90 01 01 00 00 0f b6 90 90 01 01 00 00 90 03 07 07 0f b6 14 02 8a 1c 06 8a 1c 06 0f b6 14 02 88 14 06 0f b6 90 90 01 01 00 00 88 1c 02 8a 90 90 00 01 00 00 90 00 } //00 00 
		$a_00_9 = {80 10 00 00 } //bc 00 
	condition:
		any of ($a_*)
 
}