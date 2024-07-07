
rule TrojanDownloader_Win32_Swizzor{
	meta:
		description = "TrojanDownloader:Win32/Swizzor,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0d 00 00 "
		
	strings :
		$a_00_0 = {39 38 30 34 37 42 30 33 35 34 45 36 34 37 32 45 32 31 45 37 45 36 35 38 43 35 38 31 45 41 41 35 } //2 98047B0354E6472E21E7E658C581EAA5
		$a_00_1 = {38 46 35 36 39 43 35 39 42 42 44 34 42 30 35 42 41 46 44 33 39 36 33 41 33 41 30 42 32 32 } //2 8F569C59BBD4B05BAFD3963A3A0B22
		$a_00_2 = {34 44 33 41 38 44 43 33 46 39 43 34 46 32 39 45 45 30 44 42 } //2 4D3A8DC3F9C4F29EE0DB
		$a_00_3 = {4b 52 53 79 73 74 65 6d 20 76 31 2e 30 } //2 KRSystem v1.0
		$a_00_4 = {41 49 45 4e 20 } //1 AIEN 
		$a_00_5 = {55 72 6c 4d 6b 53 65 74 53 65 73 73 69 6f 6e 4f 70 74 69 6f 6e } //1 UrlMkSetSessionOption
		$a_02_6 = {68 74 74 70 3a 2f 2f 75 70 64 2e 90 02 10 2e 63 6f 6d 2f 75 70 64 2f 63 68 65 63 6b 90 00 } //2
		$a_00_7 = {c1 e0 10 03 f0 81 f6 b3 3a 29 f0 } //2
		$a_00_8 = {36 34 33 45 43 30 46 42 44 42 32 44 46 35 38 34 42 41 43 39 42 43 43 36 39 35 42 39 38 41 41 33 44 32 45 35 44 44 38 36 32 37 44 38 41 33 44 35 } //2 643EC0FBDB2DF584BAC9BCC695B98AA3D2E5DD8627D8A3D5
		$a_00_9 = {44 6f 77 6e 6c 6f 61 64 20 55 42 41 67 65 6e 74 } //1 Download UBAgent
		$a_00_10 = {75 70 64 62 68 6f 2e 64 6c 6c } //1 updbho.dll
		$a_01_11 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //1 CreateRemoteThread
		$a_01_12 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 ReadProcessMemory
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*2+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_02_6  & 1)*2+(#a_00_7  & 1)*2+(#a_00_8  & 1)*2+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=6
 
}