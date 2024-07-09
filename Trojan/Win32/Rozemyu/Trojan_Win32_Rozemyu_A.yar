
rule Trojan_Win32_Rozemyu_A{
	meta:
		description = "Trojan:Win32/Rozemyu.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {5c 5a 6f 72 65 6e 69 75 6d 2e 70 64 62 00 } //1
		$a_01_1 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 5a 00 6f 00 72 00 65 00 6e 00 69 00 75 00 6d 00 } //1 Global\Zorenium
		$a_03_2 = {61 00 64 00 64 00 75 00 73 00 65 00 72 00 2e 00 70 00 68 00 70 00 3f 00 75 00 69 00 64 00 3d 00 31 00 33 00 33 00 37 00 26 00 6c 00 61 00 6e 00 3d 00 [0-20] 26 00 63 00 6d 00 70 00 6e 00 61 00 6d 00 65 00 3d 00 } //1
		$a_01_3 = {52 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 2e 00 70 00 68 00 70 00 3f 00 53 00 74 00 61 00 74 00 75 00 73 00 3d 00 4e 00 65 00 77 00 26 00 55 00 73 00 65 00 72 00 49 00 44 00 3d 00 25 00 73 00 26 00 4c 00 6f 00 63 00 61 00 74 00 69 00 6f 00 6e 00 3d 00 25 00 73 00 26 00 4f 00 53 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 3d 00 25 00 73 00 26 00 50 00 6c 00 61 00 74 00 66 00 6f 00 72 00 6d 00 3d 00 25 00 73 00 26 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 3d 00 76 00 } //1 Register.php?Status=New&UserID=%s&Location=%s&OSVersion=%s&Platform=%s&version=v
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}