
rule Trojan_BAT_AgentTesla_BQI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BQI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 10 00 00 "
		
	strings :
		$a_81_0 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_1 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_81_2 = {00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 } //1 砀硸硸硸硸硸硸硸硸x
		$a_81_3 = {00 41 5a 58 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 43 00 } //1 䄀塚䍃䍃䍃䍃䍃䍃䍃䍃䍃C
		$a_81_4 = {43 6f 6c 6f 72 43 6f 6e 76 65 72 74 65 72 } //1 ColorConverter
		$a_81_5 = {47 65 74 54 79 70 65 } //1 GetType
		$a_81_6 = {47 5a 69 70 53 74 72 65 61 6d } //1 GZipStream
		$a_81_7 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_8 = {43 6f 6d 70 72 65 73 73 69 6f 6e 4d 6f 64 65 } //1 CompressionMode
		$a_81_9 = {46 72 6f 6d 42 61 73 65 36 34 } //1 FromBase64
		$a_81_10 = {52 65 73 74 72 69 63 74 65 64 45 72 72 6f 72 } //1 RestrictedError
		$a_81_11 = {56 61 6c 75 65 45 6e 75 6d 65 72 61 74 6f 72 } //1 ValueEnumerator
		$a_81_12 = {54 61 73 6b 43 61 6e 63 65 6c 65 64 45 78 63 65 70 74 69 6f 6e } //1 TaskCanceledException
		$a_81_13 = {00 69 6d 69 6d 69 6d 69 6d 69 6d 00 } //1 椀業業業業m
		$a_02_14 = {44 00 53 00 44 00 53 00 90 02 04 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 53 00 90 00 } //1
		$a_02_15 = {44 53 44 53 90 02 04 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 90 00 } //1
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_02_14  & 1)*1+(#a_02_15  & 1)*1) >=15
 
}