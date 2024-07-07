
rule Trojan_BAT_SpyNoon_GLID_MTB{
	meta:
		description = "Trojan:BAT/SpyNoon.GLID!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1d 00 1d 00 10 00 00 "
		
	strings :
		$a_01_0 = {3d 72 05 03 3d 72 3d 72 df 02 05 03 3d 72 e0 02 3d 72 3d 72 } //1
		$a_01_1 = {f4 02 0f 03 ef 02 3d 72 eb 02 3d 72 3d 72 e3 02 3d 72 3d 72 cd 02 cd 02 d6 02 } //1
		$a_01_2 = {df 02 d2 02 04 03 13 03 05 03 d2 02 df 02 12 03 df 02 0c 03 ec 02 e7 02 00 } //1
		$a_81_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //2 FromBase64String
		$a_81_4 = {54 6f 53 74 72 69 6e 67 } //2 ToString
		$a_81_5 = {54 6f 43 68 61 72 41 72 72 61 79 } //2 ToCharArray
		$a_81_6 = {47 65 74 41 73 73 65 6d 62 6c 69 65 73 } //2 GetAssemblies
		$a_81_7 = {52 65 70 6c 61 63 65 } //2 Replace
		$a_81_8 = {53 68 61 6b 65 4f 66 54 68 65 44 61 79 } //2 ShakeOfTheDay
		$a_81_9 = {49 6e 76 6f 6b 65 } //2 Invoke
		$a_81_10 = {47 65 74 54 79 70 65 } //2 GetType
		$a_81_11 = {00 5a 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5a 00 } //2
		$a_81_12 = {00 52 41 57 00 } //2
		$a_81_13 = {00 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 00 } //2 䄀䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁䅁A
		$a_81_14 = {00 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 55 41 00 } //2 唀啕啕啕啕啕啕啕啕啕啕啕啕啕啕A
		$a_81_15 = {00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 } //2 䤀䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉䥉I
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_81_3  & 1)*2+(#a_81_4  & 1)*2+(#a_81_5  & 1)*2+(#a_81_6  & 1)*2+(#a_81_7  & 1)*2+(#a_81_8  & 1)*2+(#a_81_9  & 1)*2+(#a_81_10  & 1)*2+(#a_81_11  & 1)*2+(#a_81_12  & 1)*2+(#a_81_13  & 1)*2+(#a_81_14  & 1)*2+(#a_81_15  & 1)*2) >=29
 
}