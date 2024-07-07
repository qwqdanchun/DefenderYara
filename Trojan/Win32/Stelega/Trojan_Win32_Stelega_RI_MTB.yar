
rule Trojan_Win32_Stelega_RI_MTB{
	meta:
		description = "Trojan:Win32/Stelega.RI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {41 00 70 00 70 00 44 00 61 00 74 00 61 00 5c 00 52 00 6f 00 61 00 6d 00 69 00 6e 00 67 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 54 00 65 00 6d 00 70 00 6c 00 61 00 74 00 65 00 73 00 5c 00 53 00 74 00 75 00 62 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //1 AppData\Roaming\Microsoft\Windows\Templates\Stub\Project1.vbp
		$a_01_1 = {43 00 6f 00 6d 00 6f 00 64 00 6f 00 5c 00 49 00 63 00 65 00 44 00 72 00 61 00 67 00 6f 00 6e 00 } //1 Comodo\IceDragon
		$a_01_2 = {38 00 70 00 65 00 63 00 78 00 73 00 74 00 75 00 64 00 69 00 6f 00 73 00 5c 00 43 00 79 00 62 00 65 00 72 00 66 00 6f 00 78 00 } //1 8pecxstudios\Cyberfox
		$a_01_3 = {4e 00 45 00 54 00 47 00 41 00 54 00 45 00 20 00 54 00 65 00 63 00 68 00 6e 00 6f 00 6c 00 6f 00 67 00 69 00 65 00 73 00 5c 00 42 00 6c 00 61 00 63 00 6b 00 48 00 61 00 77 00 4b 00 } //1 NETGATE Technologies\BlackHawK
		$a_01_4 = {4d 00 6f 00 6f 00 6e 00 63 00 68 00 69 00 6c 00 64 00 20 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 69 00 6f 00 6e 00 73 00 5c 00 50 00 61 00 6c 00 65 00 20 00 4d 00 6f 00 6f 00 6e 00 } //1 Moonchild Productions\Pale Moon
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}