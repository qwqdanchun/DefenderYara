
rule VirTool_Win32_SuspPowershellCommand_B{
	meta:
		description = "VirTool:Win32/SuspPowershellCommand.B,SIGNATURE_TYPE_CMDHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00  powershell
		$a_00_1 = {68 00 69 00 64 00 64 00 65 00 6e 00 } //01 00  hidden
		$a_00_2 = {2d 00 65 00 6e 00 63 00 } //9c ff  -enc
		$a_01_3 = {43 00 67 00 41 00 6b 00 41 00 46 00 4d 00 41 00 59 00 77 00 42 00 79 00 41 00 47 00 6b 00 41 00 63 00 41 00 42 00 30 00 41 00 43 00 41 00 41 00 50 00 51 00 41 00 67 00 41 00 48 00 73 00 41 00 62 00 67 00 42 00 6c 00 41 00 48 00 51 00 41 00 63 00 77 00 42 00 30 00 41 00 47 00 45 00 41 00 64 00 41 00 41 00 75 00 41 00 47 00 55 00 41 00 65 00 41 00 42 00 6c 00 41 00 43 00 41 00 41 00 4c 00 51 00 42 00 68 00 41 00 47 00 34 00 41 00 49 00 41 00 41 00 74 00 } //9c ff  CgAkAFMAYwByAGkAcAB0ACAAPQAgAHsAbgBlAHQAcwB0AGEAdAAuAGUAeABlACAALQBhAG4AIAAt
		$a_01_4 = {20 00 2d 00 4e 00 6f 00 4c 00 6f 00 67 00 6f 00 20 00 2d 00 4e 00 6f 00 6e 00 49 00 6e 00 74 00 65 00 72 00 61 00 63 00 74 00 69 00 76 00 65 00 20 00 2d 00 45 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 6c 00 69 00 63 00 79 00 20 00 55 00 6e 00 72 00 65 00 73 00 74 00 72 00 69 00 63 00 74 00 65 00 64 00 20 00 2d 00 57 00 69 00 6e 00 64 00 6f 00 77 00 53 00 74 00 79 00 6c 00 65 00 20 00 48 00 69 00 64 00 64 00 65 00 6e 00 20 00 2d 00 4e 00 6f 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 20 00 2d 00 45 00 6e 00 63 00 6f 00 64 00 65 00 64 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 20 00 } //ff ff   -NoLogo -NonInteractive -ExecutionPolicy Unrestricted -WindowStyle Hidden -NoProfile -EncodedCommand 
		$a_00_5 = {61 00 76 00 6f 00 69 00 64 00 5f 00 64 00 75 00 70 00 6c 00 69 00 63 00 61 00 74 00 65 00 2d 00 7b 00 61 00 62 00 37 00 63 00 63 00 65 00 66 00 64 00 2d 00 31 00 39 00 62 00 33 00 2d 00 34 00 62 00 33 00 66 00 2d 00 62 00 31 00 37 00 38 00 2d 00 33 00 65 00 34 00 32 00 61 00 37 00 30 00 37 00 37 00 64 00 65 00 39 00 7d 00 } //00 00  avoid_duplicate-{ab7ccefd-19b3-4b3f-b178-3e42a7077de9}
	condition:
		any of ($a_*)
 
}