
rule HackTool_Win32_LSADump_dha{
	meta:
		description = "HackTool:Win32/LSADump!dha,SIGNATURE_TYPE_PEHSTR,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 53 00 59 00 53 00 54 00 45 00 4d 00 33 00 32 00 5c 00 6c 00 73 00 61 00 73 00 72 00 76 00 2e 00 44 00 4c 00 4c 00 } //1 C:\WINDOWS\SYSTEM32\lsasrv.DLL
		$a_01_1 = {47 00 65 00 74 00 20 00 74 00 68 00 65 00 20 00 53 00 79 00 73 00 4b 00 65 00 79 00 20 00 74 00 6f 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 20 00 53 00 41 00 4d 00 20 00 65 00 6e 00 74 00 72 00 69 00 65 00 73 00 20 00 28 00 66 00 72 00 6f 00 6d 00 20 00 72 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 20 00 6f 00 72 00 20 00 68 00 69 00 76 00 65 00 73 00 29 00 } //1 Get the SysKey to decrypt SAM entries (from registry or hives)
		$a_01_2 = {45 00 52 00 52 00 4f 00 52 00 20 00 6b 00 75 00 68 00 6c 00 5f 00 6d 00 5f 00 6c 00 73 00 61 00 64 00 75 00 6d 00 70 00 5f 00 73 00 61 00 6d 00 20 00 3b 00 20 00 43 00 72 00 65 00 61 00 74 00 65 00 46 00 69 00 6c 00 65 00 20 00 28 00 53 00 59 00 53 00 54 00 45 00 4d 00 20 00 68 00 69 00 76 00 65 00 29 00 20 00 28 00 30 00 78 00 25 00 30 00 38 00 78 00 29 00 } //2 ERROR kuhl_m_lsadump_sam ; CreateFile (SYSTEM hive) (0x%08x)
		$a_01_3 = {4c 00 73 00 61 00 44 00 75 00 6d 00 70 00 20 00 6d 00 6f 00 64 00 75 00 6c 00 65 00 } //2 LsaDump module
		$a_01_4 = {4c 00 53 00 41 00 20 00 4b 00 65 00 79 00 28 00 73 00 29 00 20 00 3a 00 20 00 25 00 75 00 2c 00 20 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 } //1 LSA Key(s) : %u, default
		$a_01_5 = {41 73 6b 20 4c 53 41 20 53 65 72 76 65 72 20 74 6f 20 72 65 74 72 69 65 76 65 20 53 41 4d 2f 41 44 20 65 6e 74 72 69 65 73 20 28 6e 6f 72 6d 61 6c 2c 20 70 61 74 63 68 20 6f 6e 20 74 68 65 20 66 6c 79 20 6f 72 20 69 6e 6a 65 63 74 29 } //1 Ask LSA Server to retrieve SAM/AD entries (normal, patch on the fly or inject)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}