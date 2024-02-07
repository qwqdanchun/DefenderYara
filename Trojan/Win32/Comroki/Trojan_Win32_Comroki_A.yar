
rule Trojan_Win32_Comroki_A{
	meta:
		description = "Trojan:Win32/Comroki.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {6d 65 6e 73 61 67 65 6d 3d 27 49 4e 46 45 43 54 20 42 79 20 43 6f 64 65 72 20 52 6f 6f 74 4b 69 74 00 } //01 00 
		$a_00_1 = {4d 65 6e 73 61 67 65 6d 3d 27 4e 65 77 20 4b 4c 5f 43 43 73 5f 32 30 31 31 20 42 79 20 43 6f 64 65 72 5f 72 6f 6f 74 6b 69 74 40 68 74 6d 61 69 6c 2e 63 6f 6d } //01 00  Mensagem='New KL_CCs_2011 By Coder_rootkit@htmail.com
		$a_00_2 = {2e 6c 69 6e 6b 77 73 2e 63 6f 6d 2f 70 72 6f 63 2f 73 75 70 65 72 50 72 6f 63 2e 6a 73 70 00 } //01 00 
		$a_00_3 = {4c 53 41 20 53 68 65 6c 6c 00 } //01 00  卌⁁桓汥l
		$a_01_4 = {77 69 6e 64 6f 77 73 20 6d 61 6e 61 67 65 72 00 } //01 00 
		$a_00_5 = {75 73 65 72 50 72 6f 64 75 63 74 49 44 3d } //01 00  userProductID=
		$a_00_6 = {61 63 74 69 6f 6e 49 44 3d } //01 00  actionID=
		$a_00_7 = {41 73 73 75 6e 74 6f 3d } //00 00  Assunto=
	condition:
		any of ($a_*)
 
}