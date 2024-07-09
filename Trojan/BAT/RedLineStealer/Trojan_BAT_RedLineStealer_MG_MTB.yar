
rule Trojan_BAT_RedLineStealer_MG_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.MG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_03_0 = {11 05 17 58 13 05 11 05 06 6f ?? ?? ?? 0a 18 5b 32 b5 08 20 ?? ?? ?? 7f 13 08 12 08 28 ?? ?? ?? 0a 6f ?? ?? ?? 0a 08 16 20 ?? ?? ?? 7f 13 08 12 08 28 ?? ?? ?? 0a 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 6f ?? ?? ?? 0a 2a } //1
		$a_01_1 = {68 00 6f 00 73 00 74 00 5f 00 77 00 61 00 74 00 63 00 68 00 } //1 host_watch
		$a_01_2 = {63 00 61 00 6e 00 5f 00 73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 } //1 can_shutdown
		$a_01_3 = {73 00 65 00 6e 00 64 00 20 00 26 00 20 00 65 00 72 00 61 00 73 00 65 00 20 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 } //1 send & erase content
		$a_01_4 = {53 65 6e 64 44 61 74 61 } //1 SendData
		$a_01_5 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_01_6 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_7 = {53 75 73 70 65 6e 64 54 68 72 65 61 64 } //1 SuspendThread
		$a_01_8 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //1 ResumeThread
		$a_01_9 = {49 73 53 75 73 70 65 6e 64 65 64 } //1 IsSuspended
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}