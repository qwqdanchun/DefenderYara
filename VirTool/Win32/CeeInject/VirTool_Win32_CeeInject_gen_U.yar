
rule VirTool_Win32_CeeInject_gen_U{
	meta:
		description = "VirTool:Win32/CeeInject.gen!U,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 08 00 00 01 00 "
		
	strings :
		$a_11_0 = {61 6e 64 62 6f 78 00 01 } //00 07  湡扤硯Ā
		$a_76_1 = {77 61 72 65 00 01 00 13 11 57 72 69 74 65 50 72 6f } //63 65 
		$a_73_2 = {65 6d 6f 72 79 00 03 00 1e 03 89 45 f0 89 45 ec 8d 45 f4 50 68 40 40 40 00 68 01 00 00 80 ff 15 90 01 04 85 c0 75 90 00 02 00 0c 01 50 58 35 aa aa aa aa 35 aa aa aa aa 02 00 08 01 50 58 83 f0 ff 83 f0 ff 02 00 10 03 99 b9 0f 27 00 00 f7 f9 90 03 01 01 8b 89 90 00 01 00 2a 03 66 81 38 4d 5a 0f 85 90 01 02 00 00 8b 40 3c 03 c7 a3 90 01 04 81 38 } //50 45 
		$a_01_4 = {02 00 00 8d 45 f0 33 f6 50 90 00 00 00 5d 04 00 00 80 27 02 80 5c 27 00 00 81 27 02 80 00 00 01 00 22 00 11 00 cc 21 56 42 49 6e 6a 65 63 74 2e 67 65 6e 21 41 51 00 00 01 40 05 82 31 00 04 00 78 ec 00 00 06 00 05 00 07 00 00 01 00 24 01 79 00 72 00 6f 00 6d 00 65 00 4d 00 73 00 73 00 65 00 63 00 6f 00 72 00 50 00 65 00 74 00 69 00 72 00 57 00 01 00 20 01 74 00 78 00 65 00 74 00 6e 00 6f 00 43 00 64 00 61 00 65 00 72 00 68 00 54 } //00 74 
	condition:
		any of ($a_*)
 
}