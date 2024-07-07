
rule Backdoor_Win32_Small_VB{
	meta:
		description = "Backdoor:Win32/Small.VB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {54 4e 53 48 32 30 30 36 36 36 30 30 39 39 31 2d 53 51 59 50 4c } //1 TNSH20066600991-SQYPL
		$a_03_1 = {32 30 35 2e 32 30 39 2e 31 34 90 01 01 2e 90 02 0a 46 69 6e 69 73 68 65 64 90 02 0a 4e 6f 20 52 65 63 6f 72 64 20 48 65 72 65 90 02 05 43 4d 44 20 47 45 54 50 48 50 55 52 4c 90 00 } //1
		$a_03_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 90 02 05 25 73 2e 64 6c 6c 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}