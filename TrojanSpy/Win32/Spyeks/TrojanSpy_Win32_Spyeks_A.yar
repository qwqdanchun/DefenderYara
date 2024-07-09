
rule TrojanSpy_Win32_Spyeks_A{
	meta:
		description = "TrojanSpy:Win32/Spyeks.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_02_0 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 [0-12] 2e 00 65 00 78 00 65 00 } //1
		$a_00_1 = {43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 4e 00 61 00 6d 00 65 00 3a 00 } //1 Computer Name:
		$a_00_2 = {40 00 56 00 69 00 63 00 74 00 69 00 6d 00 2e 00 63 00 6f 00 6d 00 } //1 @Victim.com
		$a_00_3 = {53 00 70 00 79 00 45 00 78 00 20 00 52 00 65 00 70 00 6f 00 72 00 74 00 } //1 SpyEx Report
		$a_00_4 = {73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 72 00 75 00 6e 00 } //1 software\microsoft\windows\currentversion\run
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}