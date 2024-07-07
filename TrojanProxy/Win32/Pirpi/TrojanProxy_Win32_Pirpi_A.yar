
rule TrojanProxy_Win32_Pirpi_A{
	meta:
		description = "TrojanProxy:Win32/Pirpi.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 "
		
	strings :
		$a_01_0 = {47 45 54 20 63 6c 61 73 73 25 64 2e 63 67 69 3f 74 61 6c 6b 69 64 3d 25 64 } //1 GET class%d.cgi?talkid=%d
		$a_01_1 = {54 3a 25 64 20 50 3a 25 73 3a 25 64 20 48 3a 25 64 } //1 T:%d P:%s:%d H:%d
		$a_01_2 = {43 4f 4e 4e 45 43 54 20 25 73 3a 25 64 20 48 54 54 50 2f 31 2e 31 } //1 CONNECT %s:%d HTTP/1.1
		$a_01_3 = {47 65 74 46 69 6c 65 53 69 7a 65 31 28 25 73 29 20 45 72 72 6f 72 28 25 64 29 } //1 GetFileSize1(%s) Error(%d)
		$a_01_4 = {43 72 65 61 74 65 46 69 6c 65 28 25 73 29 20 45 72 72 6f 72 28 25 64 29 } //1 CreateFile(%s) Error(%d)
		$a_01_5 = {0a 09 74 64 65 6c 61 79 0a 09 63 66 67 2e 0a 09 73 68 65 6c 6c 0a 09 } //1
		$a_01_6 = {0a 09 67 65 74 66 2e 0a 09 70 6c 0a 09 70 6b 0a 09 75 6e 6c 6f 61 64 0a 09 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=6
 
}