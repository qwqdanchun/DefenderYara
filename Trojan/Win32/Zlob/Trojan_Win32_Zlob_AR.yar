
rule Trojan_Win32_Zlob_AR{
	meta:
		description = "Trojan:Win32/Zlob.AR,SIGNATURE_TYPE_PEHSTR_EXT,21 00 20 00 0d 00 00 "
		
	strings :
		$a_01_0 = {44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 } //10 DllCanUnloadNow
		$a_02_1 = {56 69 64 65 6f (50 6c 75 67 69 6e|43 6f 64 65 63) } //10
		$a_01_2 = {7b 25 30 38 6c 58 2d 25 30 34 58 2d 25 30 34 78 2d 25 30 32 58 25 30 32 58 2d 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 7d } //2 {%08lX-%04X-%04x-%02X%02X-%02X%02X%02X%02X%02X%02X}
		$a_01_3 = {26 61 66 66 69 64 3d } //2 &affid=
		$a_01_4 = {43 6f 64 65 63 42 48 4f } //2 CodecBHO
		$a_01_5 = {76 00 69 00 72 00 75 00 73 00 61 00 6c 00 65 00 72 00 74 00 75 00 72 00 6c 00 } //2 virusalerturl
		$a_01_6 = {66 00 65 00 65 00 64 00 75 00 72 00 6c 00 } //2 feedurl
		$a_01_7 = {26 67 75 69 64 3d } //2 &guid=
		$a_01_8 = {73 65 61 72 63 68 2e 61 6f 6c } //1 search.aol
		$a_01_9 = {73 65 61 72 63 68 2e 6c 69 76 65 2e 63 6f 6d } //1 search.live.com
		$a_01_10 = {73 65 61 72 63 68 2e 6d 73 6e 2e 63 6f 6d } //1 search.msn.com
		$a_01_11 = {73 65 61 72 63 68 2e 79 61 68 6f 6f 2e 63 6f 6d } //1 search.yahoo.com
		$a_01_12 = {00 43 6f 6e 66 69 72 6d 49 6e 73 74 61 6c 6c 00 } //1 䌀湯楦浲湉瑳污l
	condition:
		((#a_01_0  & 1)*10+(#a_02_1  & 1)*10+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=32
 
}