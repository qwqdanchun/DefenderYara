
rule Trojan_Win32_VB_ABX{
	meta:
		description = "Trojan:Win32/VB.ABX,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {25 00 32 00 45 00 25 00 36 00 31 00 25 00 36 00 34 00 25 00 36 00 44 00 25 00 36 00 31 00 25 00 36 00 44 00 25 00 36 00 31 00 25 00 32 00 45 00 25 00 36 00 33 00 25 00 36 00 45 00 2f 00 63 00 6f 00 75 00 6e 00 74 00 2e 00 61 00 73 00 70 00 78 00 } //1 %2E%61%64%6D%61%6D%61%2E%63%6E/count.aspx
		$a_03_1 = {53 00 65 00 6e 00 64 00 43 00 6f 00 75 00 6e 00 74 00 31 00 31 00 2e 00 65 00 78 00 65 00 90 09 22 00 4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 00 90 00 } //1
		$a_03_2 = {09 4e db 6b 36 52 5c 4f 20 00 51 00 51 00 3a 00 35 00 31 00 30 00 37 00 38 00 34 00 35 00 31 00 38 00 90 09 1a 00 43 00 6f 00 6d 00 70 00 61 00 6e 00 79 00 4e 00 61 00 6d 00 65 00 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}