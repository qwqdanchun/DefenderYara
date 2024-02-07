
rule Trojan_Win32_IcedID_MTB{
	meta:
		description = "Trojan:Win32/IcedID!MTB,SIGNATURE_TYPE_PEHSTR_EXT,37 00 37 00 0d 00 00 32 00 "
		
	strings :
		$a_03_0 = {49 44 41 54 90 0a 30 00 0b c1 c1 90 01 01 08 c1 90 01 01 08 0b d0 90 0a 30 00 0b d0 8b c1 90 02 20 00 ff 00 00 90 00 } //32 00 
		$a_03_1 = {49 44 41 54 90 08 50 00 0b c1 c1 90 01 01 08 c1 90 01 01 08 0b d0 90 0a 30 00 0b d0 8b c1 90 00 } //01 00 
		$a_01_2 = {57 69 6e 48 74 74 70 51 75 65 72 79 44 61 74 61 41 76 61 69 6c 61 62 6c 65 } //01 00  WinHttpQueryDataAvailable
		$a_01_3 = {57 69 6e 48 74 74 70 43 6f 6e 6e 65 63 74 } //01 00  WinHttpConnect
		$a_01_4 = {57 69 6e 48 74 74 70 53 65 6e 64 52 65 71 75 65 73 74 } //01 00  WinHttpSendRequest
		$a_01_5 = {57 69 6e 48 74 74 70 43 6c 6f 73 65 48 61 6e 64 6c 65 } //01 00  WinHttpCloseHandle
		$a_01_6 = {57 69 6e 48 74 74 70 53 65 74 4f 70 74 69 6f 6e } //01 00  WinHttpSetOption
		$a_01_7 = {57 69 6e 48 74 74 70 4f 70 65 6e 52 65 71 75 65 73 74 } //01 00  WinHttpOpenRequest
		$a_01_8 = {57 69 6e 48 74 74 70 52 65 61 64 44 61 74 61 } //01 00  WinHttpReadData
		$a_01_9 = {57 69 6e 48 74 74 70 51 75 65 72 79 48 65 61 64 65 72 73 } //01 00  WinHttpQueryHeaders
		$a_01_10 = {57 69 6e 48 74 74 70 4f 70 65 6e } //01 00  WinHttpOpen
		$a_01_11 = {57 69 6e 48 74 74 70 52 65 63 65 69 76 65 52 65 73 70 6f 6e 73 65 } //01 00  WinHttpReceiveResponse
		$a_01_12 = {57 49 4e 48 54 54 50 2e 64 6c 6c } //00 00  WINHTTP.dll
	condition:
		any of ($a_*)
 
}