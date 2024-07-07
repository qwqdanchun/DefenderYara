
rule BrowserModifier_Win32_SearcherSmart{
	meta:
		description = "BrowserModifier:Win32/SearcherSmart,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0e 00 00 "
		
	strings :
		$a_01_0 = {73 00 65 00 61 00 72 00 63 00 68 00 65 00 72 00 73 00 6d 00 61 00 72 00 74 00 20 00 73 00 65 00 61 00 72 00 63 00 68 00 20 00 65 00 6e 00 68 00 61 00 6e 00 63 00 65 00 72 00 } //2 searchersmart search enhancer
		$a_01_1 = {73 00 65 00 61 00 72 00 63 00 68 00 65 00 72 00 73 00 6d 00 61 00 72 00 74 00 20 00 73 00 69 00 64 00 65 00 62 00 61 00 72 00 } //2 searchersmart sidebar
		$a_01_2 = {73 00 65 00 61 00 72 00 63 00 68 00 65 00 72 00 73 00 6d 00 61 00 72 00 74 00 20 00 6c 00 6f 00 67 00 69 00 63 00 } //2 searchersmart logic
		$a_01_3 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 42 00 72 00 6f 00 77 00 73 00 65 00 72 00 20 00 48 00 65 00 6c 00 70 00 65 00 72 00 20 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 5c 00 25 00 73 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\%s
		$a_01_4 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 20 00 42 00 61 00 72 00 73 00 5c 00 25 00 73 00 } //1 SOFTWARE\Microsoft\Internet Explorer\Explorer Bars\%s
		$a_01_5 = {43 00 4c 00 53 00 49 00 44 00 5c 00 25 00 73 00 5c 00 49 00 6d 00 70 00 6c 00 65 00 6d 00 65 00 6e 00 74 00 65 00 64 00 20 00 43 00 61 00 74 00 65 00 67 00 6f 00 72 00 69 00 65 00 73 00 5c 00 7b 00 30 00 30 00 30 00 32 00 31 00 34 00 39 00 33 00 2d 00 30 00 30 00 30 00 30 00 2d 00 30 00 30 00 30 00 30 00 2d 00 43 00 30 00 30 00 30 00 2d 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 34 00 36 00 7d 00 } //1 CLSID\%s\Implemented Categories\{00021493-0000-0000-C000-000000000046}
		$a_01_6 = {2f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 2e 00 70 00 68 00 70 00 } //1 /install.php
		$a_01_7 = {2f 00 6e 00 6f 00 74 00 69 00 66 00 79 00 2e 00 70 00 68 00 70 00 } //1 /notify.php
		$a_01_8 = {2f 00 67 00 65 00 74 00 6f 00 70 00 74 00 2e 00 70 00 68 00 70 00 } //1 /getopt.php
		$a_01_9 = {2f 00 72 00 64 00 72 00 2e 00 70 00 68 00 70 00 } //2 /rdr.php
		$a_01_10 = {6d 00 79 00 73 00 73 00 5f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 5f 00 6d 00 75 00 74 00 65 00 78 00 } //2 myss_install_mutex
		$a_01_11 = {6d 00 79 00 73 00 73 00 5f 00 67 00 65 00 74 00 6f 00 70 00 74 00 5f 00 6d 00 75 00 74 00 65 00 78 00 } //2 myss_getopt_mutex
		$a_01_12 = {5f 00 73 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 } //1 _settings
		$a_01_13 = {53 00 65 00 61 00 72 00 63 00 68 00 20 00 70 00 61 00 6e 00 65 00 6c 00 } //1 Search panel
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*2+(#a_01_10  & 1)*2+(#a_01_11  & 1)*2+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=15
 
}