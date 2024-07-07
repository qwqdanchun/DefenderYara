
rule Trojan_BAT_CryptInject_XC_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.XC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 "
		
	strings :
		$a_01_0 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
		$a_01_1 = {44 65 63 72 79 70 74 } //1 Decrypt
		$a_01_2 = {44 65 63 6f 6d 70 72 65 73 73 } //1 Decompress
		$a_01_3 = {52 65 76 65 72 73 65 44 65 63 6f 64 65 } //1 ReverseDecode
		$a_01_4 = {43 6f 70 79 42 6c 6f 63 6b } //1 CopyBlock
		$a_01_5 = {57 72 69 74 65 49 6e 74 36 34 } //1 WriteInt64
		$a_01_6 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 ToBase64String
		$a_01_7 = {49 00 73 00 44 00 65 00 62 00 75 00 67 00 67 00 65 00 72 00 50 00 72 00 65 00 73 00 65 00 6e 00 74 00 } //1 IsDebuggerPresent
		$a_01_8 = {42 69 74 44 65 63 6f 64 65 72 } //1 BitDecoder
		$a_01_9 = {42 69 74 54 72 65 65 44 65 63 6f 64 65 72 } //1 BitTreeDecoder
		$a_01_10 = {44 65 63 6f 64 65 44 69 72 65 63 74 42 69 74 73 } //1 DecodeDirectBits
		$a_01_11 = {4c 7a 6d 61 44 65 63 6f 64 65 72 } //1 LzmaDecoder
		$a_01_12 = {6d 5f 49 73 4d 61 74 63 68 44 65 63 6f 64 65 72 73 } //1 m_IsMatchDecoders
		$a_00_13 = {43 6f 70 79 42 6c 6f 63 6b 00 50 75 74 42 79 74 65 00 47 65 74 42 79 74 65 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_00_13  & 1)*1) >=14
 
}