
rule Trojan_Win32_Qhost_AW{
	meta:
		description = "Trojan:Win32/Qhost.AW,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {64 65 6c 20 25 77 69 6e 64 69 72 25 5c 68 6f 73 74 73 0d 0a 65 63 68 6f 20 31 38 39 2e 32 30 31 2e 36 35 2e 36 35 20 77 77 77 2e 62 61 6e 63 6f 6d 65 72 2e 63 6f 6d 2e 6d 78 20 3e 3e 20 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //1
		$a_01_1 = {64 65 6c 20 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //1 del %windir%\system32\drivers\etc\hosts
		$a_01_2 = {61 74 74 72 69 62 20 2b 73 20 2b 68 20 2b 72 20 25 77 69 6e 64 69 72 25 5c 68 6f 73 74 73 0d 0a 69 70 63 6f 6e 66 69 67 20 2f 66 6c 75 73 68 64 6e 73 } //1
		$a_01_3 = {65 63 68 6f 20 31 38 39 2e 32 30 31 2e 36 35 2e 36 35 20 68 74 74 70 3a 2f 2f 62 62 76 61 2e 63 6f 6d 20 3e 3e 20 25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //1 echo 189.201.65.65 http://bbva.com >> %windir%\system32\drivers\etc\hosts
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}