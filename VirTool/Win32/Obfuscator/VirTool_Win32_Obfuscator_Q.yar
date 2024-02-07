
rule VirTool_Win32_Obfuscator_Q{
	meta:
		description = "VirTool:Win32/Obfuscator.Q,SIGNATURE_TYPE_PEHSTR_EXT,fffffff4 01 ffffff8c 00 0a 00 00 64 00 "
		
	strings :
		$a_02_0 = {60 6a 00 68 2e 64 6c 6c 68 65 6c 33 32 68 6b 65 72 6e 90 02 07 8b 45 10 ff 10 83 c4 10 89 c7 68 65 63 74 00 90 02 06 68 65 4f 62 6a 68 69 6e 67 6c 68 46 6f 72 53 90 02 06 68 57 61 69 74 54 50 8b 45 0c ff 10 90 00 } //64 00 
		$a_02_1 = {60 6a 00 68 2e 64 6c 6c 68 90 01 05 68 65 6c 33 32 68 6b 65 72 6e 89 e0 6a 00 6a 00 50 8b 45 10 90 00 } //64 00 
		$a_02_2 = {60 6a 00 68 2e 64 6c 6c 68 65 6c 33 32 68 90 01 05 68 6b 65 72 6e 89 e0 6a 00 6a 00 50 8b 45 10 90 00 } //64 00 
		$a_00_3 = {eb 14 8b 74 24 0c 8b 86 b8 00 00 00 c6 00 90 c6 40 02 14 31 c0 c3 64 8f 05 00 00 00 00 58 5b 58 5a } //0a 00 
		$a_00_4 = {68 2e 64 6c 6c 68 65 6c 33 32 68 6b 65 72 6e 54 } //0a 00  h.dllhel32hkernT
		$a_00_5 = {68 65 4f 62 6a 68 69 6e 67 6c 68 46 6f 72 53 68 57 61 69 74 54 50 } //0a 00  heObjhinglhForShWaitTP
		$a_00_6 = {68 65 4e 61 6d 68 65 46 69 6c 68 6f 64 75 6c 68 47 65 74 4d 54 57 } //0a 00  heNamheFilhodulhGetMTW
		$a_00_7 = {68 64 6c 65 45 68 65 48 61 6e 68 6f 64 75 6c 68 47 65 74 4d 54 57 } //0a 00  hdleEheHanhodulhGetMTW
		$a_00_8 = {68 6c 6c 6f 63 68 75 61 6c 41 68 56 69 72 74 54 50 } //0a 00  hllochualAhVirtTP
		$a_00_9 = {68 64 50 74 72 68 64 52 65 61 68 49 73 42 61 54 57 } //00 00  hdPtrhdReahIsBaTW
	condition:
		any of ($a_*)
 
}