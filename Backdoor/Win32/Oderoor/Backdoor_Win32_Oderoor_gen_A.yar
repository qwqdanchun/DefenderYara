
rule Backdoor_Win32_Oderoor_gen_A{
	meta:
		description = "Backdoor:Win32/Oderoor.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0a 00 00 02 00 "
		
	strings :
		$a_01_0 = {63 72 63 00 5c 64 72 69 76 65 72 73 5c } //02 00 
		$a_01_1 = {70 6f 72 74 32 35 00 00 77 69 6e 64 6f 77 73 76 } //02 00 
		$a_01_2 = {75 70 74 69 6d 65 00 00 73 75 70 65 72 6e 6f 64 } //02 00 
		$a_01_3 = {6e 73 65 72 76 2e 63 6f 6d 00 79 69 2e 6f 72 67 } //02 00 
		$a_01_4 = {3c 2f 6f 70 74 69 6f 6e 00 00 00 00 52 65 66 65 } //01 00 
		$a_01_5 = {74 69 6f 6e 3a 20 66 6f 72 6d 2d 64 61 74 61 3b } //01 00  tion: form-data;
		$a_01_6 = {41 55 54 48 20 4c 4f 47 49 4e 0d 0a 00 00 00 00 } //01 00 
		$a_01_7 = {4d 41 49 4c 20 46 52 4f 4d 3a 20 3c 25 73 3e 0d } //01 00  䅍䱉䘠佒㩍㰠猥ാ
		$a_01_8 = {63 73 76 7c 74 78 74 7c 77 61 62 } //01 00  csv|txt|wab
		$a_01_9 = {68 61 72 76 65 73 74 00 65 6d 61 69 6c 73 } //00 00  慨癲獥t浥楡獬
	condition:
		any of ($a_*)
 
}