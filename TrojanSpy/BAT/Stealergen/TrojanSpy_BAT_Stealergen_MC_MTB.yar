
rule TrojanSpy_BAT_Stealergen_MC_MTB{
	meta:
		description = "TrojanSpy:BAT/Stealergen.MC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 "
		
	strings :
		$a_03_0 = {8e 69 1e 5a 90 0a 0c 00 08 02 7b ?? ?? ?? 04 [0-05] 6f ?? ?? ?? 0a 00 08 02 7b ?? ?? ?? 04 6f ?? ?? ?? 0a 00 08 02 7b ?? ?? ?? 04 8e 69 1e 5a 6f ?? ?? ?? 0a 00 08 02 7b ?? ?? ?? 04 6f ?? ?? ?? 0a 00 08 6f ?? ?? ?? 0a 0d 00 03 73 ?? ?? ?? 0a 13 04 00 11 04 09 16 73 ?? ?? ?? 0a 13 05 00 03 8e 69 17 59 17 58 8d ?? 00 00 01 13 06 11 05 11 06 16 03 8e 69 6f ?? ?? ?? 0a 13 07 11 06 11 07 28 ?? ?? ?? 2b 28 ?? ?? ?? 2b 13 08 de } //1
		$a_81_1 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //1 CreateEncryptor
		$a_81_2 = {46 6c 75 73 68 46 69 6e 61 6c 42 6c 6f 63 6b } //1 FlushFinalBlock
		$a_81_3 = {54 6f 41 72 72 61 79 } //1 ToArray
		$a_81_4 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_81_5 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_81_6 = {63 69 70 68 65 72 } //1 cipher
		$a_81_7 = {46 72 6f 6d 42 61 73 65 36 34 } //1 FromBase64
		$a_81_8 = {73 65 74 5f 4b 65 79 } //1 set_Key
		$a_81_9 = {73 65 74 5f 49 56 } //1 set_IV
		$a_81_10 = {73 65 74 5f 42 6c 6f 63 6b 53 69 7a 65 } //1 set_BlockSize
		$a_81_11 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1) >=12
 
}