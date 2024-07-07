
rule Trojan_Win32_Zestlox_A{
	meta:
		description = "Trojan:Win32/Zestlox.A,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {54 69 6d 65 44 6c 6c 2e 64 6c 6c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 00 44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 00 53 76 63 68 6f 73 74 45 6e 74 72 79 5f 57 33 32 54 69 6d 65 00 } //1
		$a_01_1 = {69 6e 73 73 2f 4e 65 77 56 65 72 2e 74 78 74 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}