
rule Ransom_Win32_SintaCry_A{
	meta:
		description = "Ransom:Win32/SintaCry.A,SIGNATURE_TYPE_PEHSTR_EXT,32 00 32 00 0b 00 00 0f 00 "
		
	strings :
		$a_01_0 = {53 69 6e 74 61 52 75 6e 2e 70 79 } //0f 00  SintaRun.py
		$a_01_1 = {64 65 73 74 72 6f 79 5f 73 68 61 64 6f 77 5f 63 6f 70 79 } //0f 00  destroy_shadow_copy
		$a_01_2 = {43 72 79 70 74 6f 2e 43 69 70 68 65 72 52 28 } //05 00  Crypto.CipherR(
		$a_01_3 = {61 70 69 2e 70 68 70 3f 69 6e 66 6f 3d 73 } //05 00  api.php?info=s
		$a_01_4 = {62 63 64 65 64 69 74 20 2f 73 65 74 20 7b 64 65 66 61 75 6c 74 7d 20 72 65 63 6f 76 65 72 79 65 6e 61 62 6c 65 64 20 4e 6f } //05 00  bcdedit /set {default} recoveryenabled No
		$a_01_5 = {2f 74 20 52 45 47 5f 44 57 4f 52 44 20 2f 76 20 44 69 73 61 62 6c 65 52 65 67 69 73 74 72 79 54 6f 6f 6c 73 20 2f 64 20 31 } //01 00  /t REG_DWORD /v DisableRegistryTools /d 1
		$a_01_6 = {2a 2e 75 6e 69 74 79 33 64 } //01 00  *.unity3d
		$a_01_7 = {2a 2e 76 6d 64 6b } //01 00  *.vmdk
		$a_01_8 = {2a 2e 76 6d 78 } //01 00  *.vmx
		$a_01_9 = {2a 2e 53 51 4c 49 54 45 44 42 } //01 00  *.SQLITEDB
		$a_01_10 = {2a 2e 53 51 4c 49 54 45 33 } //00 00  *.SQLITE3
		$a_00_11 = {5d 04 00 00 05 a1 03 80 5c 2f 00 00 06 a1 03 80 00 00 01 00 } //2e 00 
	condition:
		any of ($a_*)
 
}