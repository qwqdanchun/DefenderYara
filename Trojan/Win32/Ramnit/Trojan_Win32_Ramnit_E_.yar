
rule Trojan_Win32_Ramnit_E_{
	meta:
		description = "Trojan:Win32/Ramnit.E!!Ramnit.gen!E,SIGNATURE_TYPE_ARHSTR_EXT,06 00 06 00 07 00 00 "
		
	strings :
		$a_00_0 = {43 61 6d 65 6c 6c 69 61 2e 64 6c 6c 00 } //2
		$a_00_1 = {2d 2d 64 69 73 61 62 6c 65 2d 68 74 74 70 32 20 2d 2d 64 69 73 61 62 6c 65 2d 71 75 69 63 20 2d 2d 64 69 73 6b 2d 63 61 63 68 65 2d 73 69 7a 65 3d 31 } //2 --disable-http2 --disable-quic --disk-cache-size=1
		$a_00_2 = {66 69 72 65 66 6f 78 2e 65 78 65 00 6d 69 63 72 6f 73 6f 66 74 65 64 67 65 63 70 2e 65 78 65 00 74 68 75 6e 64 65 72 62 69 72 64 2e 65 78 65 00 49 73 57 6f 77 36 34 50 72 6f 63 65 73 73 00 } //2
		$a_00_3 = {43 6f 6d 6d 61 6e 64 52 6f 75 74 69 6e 65 00 4d 6f 64 75 6c 65 43 6f 64 65 00 53 74 61 72 74 52 6f 75 74 69 6e 65 00 53 74 6f 70 52 6f 75 74 69 6e 65 00 } //1
		$a_00_4 = {32 74 6f 70 52 6f 75 74 69 6e 65 00 31 74 61 72 74 52 6f 75 74 69 6e 65 00 } //1
		$a_00_5 = {33 6f 64 75 6c 65 43 6f 64 65 00 00 34 6f 6d 6d 61 6e 64 52 6f 75 74 69 6e 65 } //1
		$a_00_6 = {70 72 65 66 28 22 6e 65 74 77 6f 72 6b 2e 68 74 74 70 2e 73 70 64 79 2e 65 6e 61 62 6c 65 64 2e 68 74 74 70 32 22 2c 20 66 61 6c 73 65 29 3b } //1 pref("network.http.spdy.enabled.http2", false);
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*2+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=6
 
}