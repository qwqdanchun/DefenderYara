
rule Trojan_BAT_RATLoader_MTB{
	meta:
		description = "Trojan:BAT/RATLoader!MTB,SIGNATURE_TYPE_PEHSTR_EXT,23 00 23 00 23 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 79 73 74 65 6d 2e 49 4f 2e 43 6f 6d 70 72 65 73 73 69 6f 6e } //01 00  System.IO.Compression
		$a_01_1 = {53 79 73 74 65 6d 2e 52 65 66 6c 65 63 74 69 6f 6e 2e 45 6d 69 74 } //01 00  System.Reflection.Emit
		$a_01_2 = {53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 43 72 79 70 74 6f 67 72 61 70 68 79 } //01 00  System.Security.Cryptography
		$a_01_3 = {53 79 73 74 65 6d 2e 54 65 78 74 2e 52 65 67 75 6c 61 72 45 78 70 72 65 73 73 69 6f 6e 73 } //01 00  System.Text.RegularExpressions
		$a_01_4 = {53 79 73 74 65 6d 2e 54 68 72 65 61 64 69 6e 67 } //01 00  System.Threading
		$a_01_5 = {47 65 74 57 69 6e 64 6f 77 54 68 72 65 61 64 50 72 6f 63 65 73 73 49 64 } //01 00  GetWindowThreadProcessId
		$a_01_6 = {43 68 65 63 6b 52 65 6d 6f 74 65 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  CheckRemoteDebuggerPresent
		$a_01_7 = {67 65 74 5f 4d 61 6e 61 67 65 64 54 68 72 65 61 64 49 64 } //01 00  get_ManagedThreadId
		$a_01_8 = {57 72 69 74 65 41 6c 6c 42 79 74 65 73 } //01 00  WriteAllBytes
		$a_01_9 = {57 72 69 74 65 41 6c 6c 54 65 78 74 } //01 00  WriteAllText
		$a_01_10 = {47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 } //01 00  GetCurrentProcess
		$a_01_11 = {73 65 74 5f 41 72 67 75 6d 65 6e 74 73 } //01 00  set_Arguments
		$a_01_12 = {73 65 74 5f 57 69 6e 64 6f 77 53 74 79 6c 65 } //01 00  set_WindowStyle
		$a_01_13 = {73 65 74 5f 43 72 65 61 74 65 4e 6f 57 69 6e 64 6f 77 } //01 00  set_CreateNoWindow
		$a_01_14 = {73 65 74 5f 45 72 72 6f 72 44 69 61 6c 6f 67 } //01 00  set_ErrorDialog
		$a_01_15 = {67 65 74 5f 49 73 36 34 42 69 74 4f 70 65 72 61 74 69 6e 67 53 79 73 74 65 6d } //01 00  get_Is64BitOperatingSystem
		$a_01_16 = {47 65 74 46 69 6c 65 4e 61 6d 65 57 69 74 68 6f 75 74 45 78 74 65 6e 73 69 6f 6e } //01 00  GetFileNameWithoutExtension
		$a_01_17 = {67 65 74 5f 4d 61 69 6e 57 69 6e 64 6f 77 54 69 74 6c 65 } //01 00  get_MainWindowTitle
		$a_01_18 = {67 65 74 5f 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 } //01 00  get_SystemDirectory
		$a_01_19 = {67 65 74 5f 45 78 65 63 75 74 61 62 6c 65 50 61 74 68 } //01 00  get_ExecutablePath
		$a_01_20 = {73 65 74 5f 55 73 65 53 68 65 6c 6c 45 78 65 63 75 74 65 } //01 00  set_UseShellExecute
		$a_01_21 = {73 65 74 5f 55 73 65 4d 61 63 68 69 6e 65 4b 65 79 53 74 6f 72 65 } //01 00  set_UseMachineKeyStore
		$a_01_22 = {67 65 74 5f 41 6c 6c 6f 77 4f 6e 6c 79 46 69 70 73 41 6c 67 6f 72 69 74 68 6d 73 } //01 00  get_AllowOnlyFipsAlgorithms
		$a_01_23 = {47 65 74 4d 61 6e 69 66 65 73 74 52 65 73 6f 75 72 63 65 53 74 72 65 61 6d } //01 00  GetManifestResourceStream
		$a_01_24 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_25 = {47 65 74 44 65 6c 65 67 61 74 65 46 6f 72 46 75 6e 63 74 69 6f 6e 50 6f 69 6e 74 65 72 } //01 00  GetDelegateForFunctionPointer
		$a_01_26 = {73 65 74 5f 4b 65 79 } //01 00  set_Key
		$a_01_27 = {73 65 74 5f 49 56 } //01 00  set_IV
		$a_01_28 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_29 = {46 6c 75 73 68 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00  FlushFinalBlock
		$a_01_30 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //01 00  CreateEncryptor
		$a_01_31 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  ToBase64String
		$a_01_32 = {67 65 74 5f 59 } //01 00  get_Y
		$a_01_33 = {67 65 74 5f 58 } //01 00  get_X
		$a_01_34 = {4b 69 6c 6c } //00 00  Kill
	condition:
		any of ($a_*)
 
}