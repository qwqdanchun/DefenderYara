
rule Trojan_BAT_AsyncRat_MI_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.MI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0d 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 06 6f 90 01 03 0a 8e 69 8d 90 01 01 00 00 01 0c 06 6f 90 01 03 0a 8e 69 8d 90 01 01 00 00 01 0d 07 08 16 08 8e 69 6f 90 01 03 0a 26 07 09 16 09 8e 69 6f 90 01 03 0a 26 06 08 09 6f 90 01 03 0a 13 04 07 11 04 16 73 90 01 01 00 00 0a 13 05 07 6f 90 01 03 0a 07 6f 90 01 03 0a 59 d4 8d 90 01 01 00 00 01 13 06 11 05 11 06 16 11 06 8e 69 6f 90 01 03 0a 26 11 06 13 07 de 2c 11 05 2c 07 11 05 6f 90 01 03 0a dc 11 04 2c 07 11 04 6f 90 01 03 0a dc 90 00 } //1
		$a_01_1 = {53 6c 65 65 70 } //1 Sleep
		$a_01_2 = {49 73 41 64 6d 69 6e } //1 IsAdmin
		$a_01_3 = {50 72 65 76 65 6e 74 53 6c 65 65 70 } //1 PreventSleep
		$a_01_4 = {4b 69 6c 6c } //1 Kill
		$a_01_5 = {53 74 72 52 65 76 65 72 73 65 } //1 StrReverse
		$a_01_6 = {52 75 6e 41 6e 74 69 41 6e 61 6c 79 73 69 73 } //1 RunAntiAnalysis
		$a_01_7 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_01_8 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_9 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_01_10 = {44 65 63 72 79 70 74 } //1 Decrypt
		$a_01_11 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_12 = {43 68 65 63 6b 52 65 6d 6f 74 65 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 CheckRemoteDebuggerPresent
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=13
 
}