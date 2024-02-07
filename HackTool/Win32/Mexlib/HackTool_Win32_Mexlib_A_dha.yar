
rule HackTool_Win32_Mexlib_A_dha{
	meta:
		description = "HackTool:Win32/Mexlib.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {3f 41 56 64 62 5f 6c 73 61 5f 73 65 63 72 65 74 73 40 40 } //01 00  ?AVdb_lsa_secrets@@
		$a_01_1 = {3f 41 56 64 62 5f 77 69 6e 76 61 75 6c 74 5f 70 61 73 73 77 64 40 40 } //01 00  ?AVdb_winvault_passwd@@
		$a_01_2 = {3f 41 56 64 62 5f 74 68 75 6e 64 65 72 62 69 72 64 5f 70 61 73 73 77 64 40 40 } //01 00  ?AVdb_thunderbird_passwd@@
		$a_01_3 = {3f 41 56 64 62 5f 77 6c 61 6e 5f 70 61 73 73 77 64 40 40 } //01 00  ?AVdb_wlan_passwd@@
		$a_01_4 = {3f 41 56 65 73 65 5f 64 62 40 40 } //01 00  ?AVese_db@@
		$a_01_5 = {3f 41 56 64 70 61 70 69 5f 76 61 75 6c 74 5f 66 69 6c 65 40 40 } //01 00  ?AVdpapi_vault_file@@
		$a_01_6 = {3f 41 56 6d 6f 64 62 75 66 40 40 } //01 00  ?AVmodbuf@@
		$a_01_7 = {3f 41 56 62 75 66 72 65 61 64 40 40 } //01 00  ?AVbufread@@
		$a_01_8 = {3f 41 56 77 69 6e 6d 75 74 65 78 40 40 } //01 00  ?AVwinmutex@@
		$a_01_9 = {3f 41 56 72 63 34 40 40 } //01 00  ?AVrc4@@
		$a_01_10 = {3f 41 56 73 71 6c 64 62 5f 73 65 65 40 40 } //00 00  ?AVsqldb_see@@
	condition:
		any of ($a_*)
 
}