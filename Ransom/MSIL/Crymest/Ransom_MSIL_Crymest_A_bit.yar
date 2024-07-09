
rule Ransom_MSIL_Crymest_A_bit{
	meta:
		description = "Ransom:MSIL/Crymest.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {59 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //1 Your file have been encrypted
		$a_01_1 = {54 00 61 00 73 00 6b 00 6d 00 67 00 72 00 } //1 Taskmgr
		$a_03_2 = {2a 00 2e 00 74 00 78 00 74 00 ?? ?? 2e 00 65 00 6e 00 63 00 } //1
		$a_01_3 = {00 45 6e 63 72 79 70 74 46 69 6c 65 73 00 } //1 䔀据祲瑰楆敬s
		$a_01_4 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}