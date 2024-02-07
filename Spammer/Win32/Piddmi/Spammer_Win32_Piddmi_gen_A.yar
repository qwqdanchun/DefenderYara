
rule Spammer_Win32_Piddmi_gen_A{
	meta:
		description = "Spammer:Win32/Piddmi.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 09 00 00 0a 00 "
		
	strings :
		$a_00_0 = {c7 45 f0 01 00 00 00 c7 45 f4 01 00 00 00 c6 45 e7 00 8b 45 f8 8b 00 8b 55 f0 0f b6 44 10 ff 83 f8 3a 7d 1c 83 e8 21 72 3c 83 e8 02 74 74 83 e8 03 74 6f 83 c0 f8 83 e8 02 } //0a 00 
		$a_02_1 = {50 68 00 00 00 10 6a 00 8b 45 fc e8 90 01 02 ff ff 50 e8 90 01 02 ff ff 6a 00 6a 00 6a 00 6a 00 68 90 01 04 e8 90 01 02 ff ff 89 45 f4 83 7d f4 00 90 00 } //0a 00 
		$a_02_2 = {eb 0a 68 60 ea 00 00 e8 90 01 02 ff ff b8 90 01 04 e8 90 01 02 ff ff 8b d8 e8 90 01 02 ff ff 3b d8 0f 84 90 01 02 ff ff e8 90 01 02 ff ff 68 c0 27 09 00 e8 90 01 02 ff ff e8 90 01 02 ff ff 33 c0 90 00 } //02 00 
		$a_00_3 = {3b 0d 0a 20 43 68 61 72 73 65 74 3d 57 69 6e 64 6f 77 73 2d 31 32 35 31 00 } //02 00 
		$a_00_4 = {4d 49 4d 45 2d 56 65 72 73 69 6f 6e 3a 20 31 2e 30 0d 0a 0d 0a 00 } //02 00 
		$a_00_5 = {44 6e 73 51 75 65 72 79 5f 41 00 } //02 00 
		$a_00_6 = {6d 61 69 6c 20 65 78 63 68 61 6e 67 65 72 } //02 00  mail exchanger
		$a_00_7 = {6d 6d 2e 70 69 64 00 } //02 00 
		$a_00_8 = {5b 21 4d 55 4c 54 49 50 41 52 54 21 5d } //00 00  [!MULTIPART!]
	condition:
		any of ($a_*)
 
}