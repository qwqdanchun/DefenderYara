
rule Ransom_AndroidOS_Congur_A{
	meta:
		description = "Ransom:AndroidOS/Congur.A,SIGNATURE_TYPE_DEXHSTR_EXT,07 00 07 00 05 00 00 02 00 "
		
	strings :
		$a_00_0 = {63 6f 6d 2e 68 2e 73 } //02 00  com.h.s
		$a_00_1 = {4c 63 6f 6d 2f 68 2f 44 55 3b } //02 00  Lcom/h/DU;
		$a_00_2 = {4c 63 6f 6d 2f 68 2f 4d 79 41 64 6d 69 6e 3b } //01 00  Lcom/h/MyAdmin;
		$a_00_3 = {4c 63 6f 6d 2f 68 2f 62 62 62 } //01 00  Lcom/h/bbb
		$a_00_4 = {63 32 39 66 65 35 36 66 61 35 39 61 62 30 64 62 } //00 00  c29fe56fa59ab0db
	condition:
		any of ($a_*)
 
}