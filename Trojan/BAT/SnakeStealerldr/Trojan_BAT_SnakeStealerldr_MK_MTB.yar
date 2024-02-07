
rule Trojan_BAT_SnakeStealerldr_MK_MTB{
	meta:
		description = "Trojan:BAT/SnakeStealerldr.MK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 19 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 4d 65 38 2e 64 6c 6c } //01 00  AMe8.dll
		$a_01_1 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //01 00  VirtualProtect
		$a_01_2 = {47 65 74 48 61 73 68 43 6f 64 65 } //01 00  GetHashCode
		$a_03_3 = {41 4d 65 38 2e 4d 79 90 02 ff 41 70 70 6c 69 63 61 74 69 6f 6e 53 65 74 74 69 6e 67 73 42 61 73 65 90 00 } //01 00 
		$a_01_4 = {53 70 65 63 69 61 6c 46 6f 6c 64 65 72 } //01 00  SpecialFolder
		$a_01_5 = {4d 75 6c 74 69 63 61 73 74 44 65 6c 65 67 61 74 65 } //01 00  MulticastDelegate
		$a_01_6 = {42 65 67 69 6e 49 6e 76 6f 6b 65 } //01 00  BeginInvoke
		$a_01_7 = {44 65 6c 65 67 61 74 65 43 61 6c 6c 62 61 63 6b } //01 00  DelegateCallback
		$a_01_8 = {45 6e 64 49 6e 76 6f 6b 65 } //01 00  EndInvoke
		$a_01_9 = {44 65 6c 65 67 61 74 65 41 73 79 6e 63 52 65 73 75 6c 74 } //01 00  DelegateAsyncResult
		$a_01_10 = {50 72 6f 63 65 73 73 42 61 73 69 63 49 6e 66 6f 72 6d 61 74 69 6f 6e } //01 00  ProcessBasicInformation
		$a_01_11 = {50 72 6f 63 65 73 73 57 6f 77 36 34 49 6e 66 6f 72 6d 61 74 69 6f 6e } //01 00  ProcessWow64Information
		$a_01_12 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 73 55 73 65 72 } //01 00  CreateProcessAsUser
		$a_01_13 = {50 61 73 73 77 6f 72 64 44 65 72 69 76 65 42 79 74 65 73 } //01 00  PasswordDeriveBytes
		$a_01_14 = {41 4d 65 38 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  AMe8.Resources.resources
		$a_01_15 = {42 6c 6f 63 6b 43 6f 70 79 } //01 00  BlockCopy
		$a_01_16 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00  get_CurrentDomain
		$a_01_17 = {61 64 64 5f 41 73 73 65 6d 62 6c 79 52 65 73 6f 6c 76 65 } //01 00  add_AssemblyResolve
		$a_01_18 = {67 65 74 5f 56 61 6c 75 65 } //01 00  get_Value
		$a_01_19 = {73 65 74 5f 56 61 6c 75 65 } //01 00  set_Value
		$a_01_20 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //01 00  get_Assembly
		$a_01_21 = {50 72 6f 6a 65 63 74 44 61 74 61 } //01 00  ProjectData
		$a_01_22 = {67 65 74 5f 42 61 73 65 41 64 64 72 65 73 73 } //01 00  get_BaseAddress
		$a_01_23 = {67 65 74 5f 55 6e 69 63 6f 64 65 } //01 00  get_Unicode
		$a_01_24 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00  CreateDecryptor
	condition:
		any of ($a_*)
 
}