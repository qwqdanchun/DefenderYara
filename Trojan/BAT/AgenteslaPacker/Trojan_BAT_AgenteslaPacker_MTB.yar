
rule Trojan_BAT_AgenteslaPacker_MTB{
	meta:
		description = "Trojan:BAT/AgenteslaPacker!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 4d 6f 64 75 6c 65 3e } //01 00  <Module>
		$a_01_1 = {67 65 74 5f 41 6c 6c 6f 77 44 72 6f 70 } //01 00  get_AllowDrop
		$a_01_2 = {73 65 74 5f 41 6c 6c 6f 77 44 72 6f 70 } //01 00  set_AllowDrop
		$a_01_3 = {00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 } //01 00 
		$a_01_4 = {00 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 00 } //01 00  䄀䅁䅁䅁䅁䅁䅁䅁䅁䅁A
		$a_01_5 = {00 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 57 00 } //01 00  圀块块块块块块块块块W
		$a_01_6 = {3c 50 72 69 76 61 74 65 49 6d 70 6c 65 6d 65 6e 74 61 74 69 6f 6e 44 65 74 61 69 6c 73 3e } //01 00  <PrivateImplementationDetails>
		$a_01_7 = {53 79 73 74 65 6d 2e 54 68 72 65 61 64 69 6e 67 } //01 00  System.Threading
		$a_01_8 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_9 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00  CreateDecryptor
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgenteslaPacker_MTB_2{
	meta:
		description = "Trojan:BAT/AgenteslaPacker!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0d 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 4d 6f 64 75 6c 65 3e } //01 00  <Module>
		$a_01_1 = {41 73 73 65 6d 62 6c 79 4c 6f 61 64 65 72 } //01 00  AssemblyLoader
		$a_01_2 = {43 6f 73 74 75 72 61 } //01 00  Costura
		$a_01_3 = {53 79 73 74 65 6d 2e 54 68 72 65 61 64 69 6e 67 } //01 00  System.Threading
		$a_01_4 = {53 79 73 74 65 6d 2e 49 4f 2e 43 6f 6d 70 72 65 73 73 69 6f 6e } //01 00  System.IO.Compression
		$a_01_5 = {52 65 61 64 46 72 6f 6d 45 6d 62 65 64 64 65 64 52 65 73 6f 75 72 63 65 73 } //01 00  ReadFromEmbeddedResources
		$a_01_6 = {72 65 71 75 65 73 74 65 64 41 73 73 65 6d 62 6c 79 4e 61 6d 65 } //01 00  requestedAssemblyName
		$a_01_7 = {43 00 61 00 74 00 63 00 68 00 41 00 6e 00 64 00 54 00 68 00 72 00 6f 00 77 00 45 00 78 00 3a 00 } //01 00  CatchAndThrowEx:
		$a_01_8 = {44 00 69 00 64 00 69 00 64 00 65 00 20 00 62 00 79 00 20 00 7a 00 65 00 72 00 6f 00 20 00 65 00 72 00 72 00 6f 00 72 00 } //01 00  Didide by zero error
		$a_01_9 = {44 00 6f 00 53 00 74 00 75 00 66 00 66 00 32 00 3a 00 } //01 00  DoStuff2:
		$a_01_10 = {49 00 6e 00 6e 00 65 00 72 00 20 00 65 00 78 00 63 00 65 00 70 00 74 00 69 00 6f 00 6e 00 3a 00 } //01 00  Inner exception:
		$a_01_11 = {63 00 6f 00 73 00 74 00 75 00 72 00 61 00 2e 00 63 00 6c 00 61 00 73 00 73 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2e 00 64 00 6c 00 6c 00 2e 00 63 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 65 00 64 00 } //01 00  costura.classlibrary.dll.compressed
		$a_01_12 = {63 00 6f 00 73 00 74 00 75 00 72 00 61 00 2e 00 63 00 6f 00 73 00 74 00 75 00 72 00 61 00 2e 00 64 00 6c 00 6c 00 2e 00 63 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 65 00 64 00 } //00 00  costura.costura.dll.compressed
	condition:
		any of ($a_*)
 
}