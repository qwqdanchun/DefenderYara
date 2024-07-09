
rule Trojan_Win32_Small_PU{
	meta:
		description = "Trojan:Win32/Small.PU,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {7c 71 3d 25 73 26 63 6c 69 65 6e 74 3d 70 75 62 2d 25 49 36 34 75 26 66 6f 72 69 64 3d 31 26 70 72 6f 67 3d 61 66 66 26 63 68 61 6e 6e 65 6c 3d 25 49 36 34 75 26 69 65 3d 55 54 46 38 26 6f 65 3d 55 54 46 38 26 68 6c 3d 7a 68 2d 43 4e 26 73 61 3d 47 6f 6f 67 6c 65 7c 63 6c 69 65 6e 74 3d 70 75 62 2d 39 31 33 33 36 38 37 32 30 37 32 36 32 37 35 34 7c 63 6c 69 65 6e 74 3d 70 75 62 2d 30 37 38 36 37 35 38 34 34 38 35 36 32 36 35 36 7c 67 67 2d 25 73 2e 68 61 6f 64 65 38 31 2e 63 6f 6d 7c 63 2d 68 69 7c 63 2d 6c 6f 7c } //1 |q=%s&client=pub-%I64u&forid=1&prog=aff&channel=%I64u&ie=UTF8&oe=UTF8&hl=zh-CN&sa=Google|client=pub-9133687207262754|client=pub-0786758448562656|gg-%s.haode81.com|c-hi|c-lo|
		$a_03_1 = {5b 49 6e 74 65 72 6e 65 74 53 68 6f 72 74 63 75 74 5d [0-05] 55 52 4c 3d 68 74 74 70 3a 2f 2f 77 77 77 2e 6b 75 32 30 30 39 2e 63 6f 6d 2f 3f 46 61 76 6f 72 69 74 65 73 [0-05] 7c 55 53 45 52 50 52 4f 46 49 4c 45 7c 5c 46 61 76 6f 72 69 74 65 73 5c } //1
		$a_03_2 = {67 6f 6f 67 6c 65 2e 7c 2e 67 6f 6f 67 6c 65 73 79 6e 64 69 63 61 74 69 6f 6e 2e 7c 2e 68 61 6f 64 65 38 31 2e 7c 65 73 65 74 2e 7c 70 61 67 65 61 64 32 2e 67 6f 6f 67 6c 65 73 79 6e 64 69 63 61 74 69 6f 6e 2e 63 6f 6d 2f 70 61 67 65 61 64 2f 73 68 6f 77 5f 73 64 6f 2e 6a 73 7c 68 74 74 70 3a 2f 2f 77 77 77 2e [0-0a] 2e 63 6f 6d 2f 7c 73 65 61 72 63 68 7c 73 74 61 72 74 7c 48 6f 73 74 7c 52 65 66 65 72 65 72 7c 43 6f 6f 6b 69 65 7c 41 63 63 65 70 74 2d 45 6e 63 6f 64 69 6e 67 7c 47 45 54 20 2f 6b 2e 74 78 74 20 48 54 54 50 2f 31 2e 30 0d 0a 48 4f 53 54 3a 20 77 77 77 2e 75 6e 69 6f 6e 38 38 38 2e 63 6f 6d } //1
		$a_01_3 = {62 00 68 00 6f 00 6c 00 69 00 62 00 73 00 2e 00 64 00 6c 00 6c 00 } //1 bholibs.dll
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}