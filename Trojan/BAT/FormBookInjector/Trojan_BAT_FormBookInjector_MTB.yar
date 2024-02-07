
rule Trojan_BAT_FormBookInjector_MTB{
	meta:
		description = "Trojan:BAT/FormBookInjector!MTB,SIGNATURE_TYPE_PEHSTR_EXT,2b 00 2b 00 2b 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_01_1 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_01_2 = {50 72 6f 63 65 73 73 53 74 61 72 74 49 6e 66 6f } //01 00  ProcessStartInfo
		$a_01_3 = {50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 79 6c 65 } //01 00  ProcessWindowStyle
		$a_01_4 = {47 65 74 46 69 6c 65 41 74 74 72 69 62 75 74 65 73 } //01 00  GetFileAttributes
		$a_01_5 = {47 65 74 50 72 6f 63 41 64 64 72 65 73 73 } //01 00  GetProcAddress
		$a_01_6 = {47 65 74 55 73 65 72 4e 61 6d 65 } //01 00  GetUserName
		$a_01_7 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 } //01 00  CreateProcess
		$a_01_8 = {57 6f 77 36 34 47 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00  Wow64GetThreadContext
		$a_01_9 = {53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00  SetThreadContext
		$a_01_10 = {57 6f 77 36 34 53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00  Wow64SetThreadContext
		$a_01_11 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  ReadProcessMemory
		$a_01_12 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_01_13 = {4e 74 55 6e 6d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //01 00  NtUnmapViewOfSection
		$a_01_14 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //01 00  VirtualAllocEx
		$a_01_15 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //01 00  ResumeThread
		$a_01_16 = {67 65 74 5f 43 75 72 72 65 6e 74 54 68 72 65 61 64 } //01 00  get_CurrentThread
		$a_01_17 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //01 00  GetExecutingAssembly
		$a_01_18 = {47 65 74 50 72 6f 63 65 73 73 65 73 } //01 00  GetProcesses
		$a_01_19 = {73 65 74 5f 57 69 6e 64 6f 77 53 74 79 6c 65 } //01 00  set_WindowStyle
		$a_01_20 = {47 65 74 54 65 6d 70 50 61 74 68 } //01 00  GetTempPath
		$a_01_21 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //01 00  DownloadFile
		$a_01_22 = {49 6e 76 6f 6b 65 } //01 00  Invoke
		$a_01_23 = {47 65 74 50 72 6f 63 65 73 73 42 79 49 64 } //01 00  GetProcessById
		$a_01_24 = {47 65 74 46 6f 6c 64 65 72 50 61 74 68 } //01 00  GetFolderPath
		$a_01_25 = {67 65 74 5f 45 6e 74 72 79 50 6f 69 6e 74 } //01 00  get_EntryPoint
		$a_01_26 = {47 65 74 50 61 72 61 6d 65 74 65 72 73 } //01 00  GetParameters
		$a_01_27 = {47 65 74 52 75 6e 74 69 6d 65 44 69 72 65 63 74 6f 72 79 } //01 00  GetRuntimeDirectory
		$a_01_28 = {49 73 49 6e 52 6f 6c 65 } //01 00  IsInRole
		$a_01_29 = {43 72 65 61 74 65 53 75 62 4b 65 79 } //01 00  CreateSubKey
		$a_01_30 = {53 65 74 56 61 6c 75 65 } //01 00  SetValue
		$a_01_31 = {73 65 74 5f 46 69 6c 65 4e 61 6d 65 } //01 00  set_FileName
		$a_01_32 = {73 65 74 5f 41 72 67 75 6d 65 6e 74 73 } //01 00  set_Arguments
		$a_01_33 = {73 65 74 5f 55 73 65 53 68 65 6c 6c 45 78 65 63 75 74 65 } //01 00  set_UseShellExecute
		$a_01_34 = {73 65 74 5f 52 65 64 69 72 65 63 74 53 74 61 6e 64 61 72 64 4f 75 74 70 75 74 } //01 00  set_RedirectStandardOutput
		$a_01_35 = {73 65 74 5f 43 72 65 61 74 65 4e 6f 57 69 6e 64 6f 77 } //01 00  set_CreateNoWindow
		$a_01_36 = {73 65 74 5f 53 74 61 72 74 49 6e 66 6f } //01 00  set_StartInfo
		$a_01_37 = {67 65 74 5f 53 74 61 6e 64 61 72 64 4f 75 74 70 75 74 } //01 00  get_StandardOutput
		$a_01_38 = {52 65 61 64 4c 69 6e 65 } //01 00  ReadLine
		$a_01_39 = {67 65 74 5f 45 6e 64 4f 66 53 74 72 65 61 6d } //01 00  get_EndOfStream
		$a_01_40 = {41 70 70 65 6e 64 } //01 00  Append
		$a_01_41 = {47 65 74 4d 61 6e 69 66 65 73 74 52 65 73 6f 75 72 63 65 53 74 72 65 61 6d } //01 00  GetManifestResourceStream
		$a_01_42 = {73 65 74 5f 50 6f 73 69 74 69 6f 6e } //00 00  set_Position
	condition:
		any of ($a_*)
 
}