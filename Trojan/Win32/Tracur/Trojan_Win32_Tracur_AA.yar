
rule Trojan_Win32_Tracur_AA{
	meta:
		description = "Trojan:Win32/Tracur.AA,SIGNATURE_TYPE_PEHSTR,05 00 05 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {26 69 70 3d 73 65 6c 66 26 6b 77 3d 00 } //02 00 
		$a_01_1 = {63 61 6e 6e 6f 74 20 67 65 74 20 63 6c 69 63 6b 20 69 6e 66 6f 00 } //02 00  慣湮瑯朠瑥挠楬正椠普o
		$a_01_2 = {70 72 6f 63 65 73 73 5f 66 69 6c 65 5f 6e 61 6d 65 3d 6d 79 73 65 6c 66 2e 64 6c 6c 00 } //01 00 
		$a_01_3 = {2f 61 75 64 69 6f 5f 6d 73 6e 2e 70 68 70 00 } //01 00 
		$a_01_4 = {2f 61 72 73 65 6e 61 6c 2e 70 68 70 00 } //01 00 
		$a_01_5 = {2f 6c 6f 67 69 6e 2f 20 2f 74 77 65 65 74 2f 20 61 63 74 69 6f 6e 3d 65 6d 62 65 64 2d 66 6c 61 73 68 } //00 00  /login/ /tweet/ action=embed-flash
	condition:
		any of ($a_*)
 
}