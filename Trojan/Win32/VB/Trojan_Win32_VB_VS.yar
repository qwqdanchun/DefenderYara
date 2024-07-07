
rule Trojan_Win32_VB_VS{
	meta:
		description = "Trojan:Win32/VB.VS,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {66 00 74 00 70 00 20 00 2d 00 73 00 3a 00 31 00 2e 00 52 00 4d 00 56 00 42 00 } //1 ftp -s:1.RMVB
		$a_01_1 = {7c 00 66 00 69 00 6e 00 64 00 20 00 22 00 53 00 75 00 43 00 48 00 30 00 53 00 54 00 2e 00 65 00 78 00 65 00 22 00 } //1 |find "SuCH0ST.exe"
		$a_01_2 = {65 00 63 00 68 00 6f 00 20 00 6f 00 20 00 6e 00 6e 00 66 00 6f 00 72 00 63 00 65 00 2e 00 33 00 33 00 32 00 32 00 2e 00 6f 00 72 00 67 00 20 00 20 00 3e 00 } //1 echo o nnforce.3322.org  >
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}