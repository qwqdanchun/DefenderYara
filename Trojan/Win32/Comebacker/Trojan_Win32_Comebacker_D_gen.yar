
rule Trojan_Win32_Comebacker_D_gen{
	meta:
		description = "Trojan:Win32/Comebacker.D.gen!dha,SIGNATURE_TYPE_CMDHSTR_EXT,63 00 01 00 09 00 00 "
		
	strings :
		$a_01_0 = {20 00 38 00 34 00 34 00 35 00 31 00 33 00 34 00 37 00 39 00 20 00 } //1  844513479 
		$a_01_1 = {20 00 37 00 34 00 38 00 36 00 35 00 31 00 33 00 38 00 37 00 39 00 38 00 35 00 32 00 20 00 } //1  7486513879852 
		$a_01_2 = {20 00 7a 00 50 00 4b 00 68 00 78 00 6c 00 76 00 43 00 41 00 61 00 6d 00 43 00 61 00 55 00 67 00 37 00 20 00 } //1  zPKhxlvCAamCaUg7 
		$a_01_3 = {20 00 36 00 62 00 74 00 37 00 63 00 4a 00 4e 00 47 00 45 00 62 00 33 00 42 00 78 00 39 00 79 00 4b 00 20 00 } //1  6bt7cJNGEb3Bx9yK 
		$a_01_4 = {20 00 71 00 41 00 79 00 57 00 75 00 36 00 42 00 7a 00 51 00 61 00 5a 00 4e 00 34 00 32 00 74 00 64 00 20 00 } //1  qAyWu6BzQaZN42td 
		$a_01_5 = {20 00 42 00 78 00 39 00 79 00 62 00 33 00 37 00 47 00 45 00 63 00 4a 00 4e 00 4b 00 36 00 62 00 74 00 20 00 } //1  Bx9yb37GEcJNK6bt 
		$a_01_6 = {20 00 46 00 4f 00 57 00 38 00 73 00 67 00 77 00 75 00 78 00 50 00 45 00 72 00 65 00 47 00 57 00 6c 00 68 00 50 00 31 00 39 00 66 00 6e 00 6c 00 5a 00 65 00 77 00 38 00 37 00 79 00 78 00 49 00 54 00 20 00 } //1  FOW8sgwuxPEreGWlhP19fnlZew87yxIT 
		$a_01_7 = {20 00 65 00 54 00 4a 00 34 00 4e 00 55 00 78 00 54 00 59 00 7a 00 42 00 6f 00 4f 00 47 00 68 00 49 00 55 00 6d 00 56 00 4d 00 63 00 58 00 56 00 56 00 57 00 57 00 52 00 73 00 5a 00 54 00 68 00 68 00 20 00 } //1  eTJ4NUxTYzBoOGhIUmVMcXVVWWRsZThh 
		$a_01_8 = {20 00 56 00 54 00 45 00 35 00 64 00 57 00 74 00 6d 00 62 00 32 00 68 00 7a 00 54 00 43 00 39 00 44 00 61 00 55 00 6f 00 30 00 59 00 58 00 4e 00 6f 00 63 00 47 00 74 00 48 00 64 00 55 00 78 00 53 00 20 00 } //1  VTE5dWtmb2hzTC9DaUo0YXNocGtHdUxS 
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=1
 
}