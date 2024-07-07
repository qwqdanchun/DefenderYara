
rule Trojan_BAT_RedLineStealer_MAP_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.MAP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 12 00 00 "
		
	strings :
		$a_01_0 = {42 00 55 00 59 00 20 00 43 00 52 00 59 00 50 00 } //1 BUY CRYP
		$a_01_1 = {40 00 50 00 75 00 6c 00 73 00 61 00 72 00 43 00 72 00 79 00 70 00 74 00 65 00 72 00 5f 00 62 00 6f 00 74 00 } //1 @PulsarCrypter_bot
		$a_01_2 = {4c 00 4b 00 47 00 48 00 62 00 54 00 53 00 42 00 53 00 } //1 LKGHbTSBS
		$a_01_3 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_01_4 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_01_5 = {67 65 74 5f 4e 61 6d 65 } //1 get_Name
		$a_01_6 = {47 65 74 44 6f 6d 61 69 6e } //1 GetDomain
		$a_01_7 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_01_8 = {67 65 74 5f 53 69 7a 65 } //1 get_Size
		$a_01_9 = {67 65 74 5f 43 6f 6e 74 72 6f 6c 73 } //1 get_Controls
		$a_01_10 = {57 00 6f 00 77 00 36 00 34 00 47 00 65 00 74 00 54 00 68 00 72 00 65 00 61 00 64 00 43 00 6f 00 6e 00 74 00 65 00 78 00 74 00 } //1 Wow64GetThreadContext
		$a_01_11 = {47 00 65 00 74 00 54 00 68 00 72 00 65 00 61 00 64 00 43 00 6f 00 6e 00 74 00 65 00 78 00 74 00 } //1 GetThreadContext
		$a_01_12 = {52 00 65 00 61 00 64 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 } //1 ReadProcessMemory
		$a_01_13 = {57 00 72 00 69 00 74 00 65 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 } //1 WriteProcessMemory
		$a_01_14 = {53 00 65 00 74 00 54 00 68 00 72 00 65 00 61 00 64 00 43 00 6f 00 6e 00 74 00 65 00 78 00 74 00 } //1 SetThreadContext
		$a_01_15 = {44 00 79 00 6e 00 61 00 6d 00 69 00 63 00 44 00 6c 00 6c 00 49 00 6e 00 76 00 6f 00 6b 00 65 00 } //1 DynamicDllInvoke
		$a_01_16 = {44 00 79 00 6e 00 61 00 6d 00 69 00 63 00 44 00 6c 00 6c 00 4d 00 6f 00 64 00 75 00 6c 00 65 00 } //1 DynamicDllModule
		$a_01_17 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 } //1 Invoke
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1) >=18
 
}