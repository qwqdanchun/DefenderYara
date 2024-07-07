
rule Ransom_MSIL_Samas_C{
	meta:
		description = "Ransom:MSIL/Samas.C,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 "
		
	strings :
		$a_03_0 = {16 0b 2b 13 7e 0b 00 00 04 73 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 07 17 58 0b 07 1f 12 32 e8 1f 1a 8d 90 01 01 00 00 01 13 0b 11 0b 16 72 90 01 02 00 70 a2 11 0b 17 72 90 01 02 00 70 a2 11 0b 18 72 90 01 02 00 70 a2 11 0b 19 90 00 } //5
		$a_01_1 = {3c 00 2f 00 79 00 65 00 4b 00 3e 00 } //1 </yeK>
		$a_01_2 = {3c 00 51 00 57 00 45 00 52 00 54 00 59 00 55 00 49 00 4f 00 50 00 41 00 53 00 44 00 46 00 47 00 48 00 4a 00 4b 00 4c 00 5a 00 58 00 3e 00 } //1 <QWERTYUIOPASDFGHJKLZX>
		$a_01_3 = {3c 00 2f 00 79 00 65 00 4b 00 64 00 65 00 74 00 70 00 79 00 72 00 63 00 6e 00 45 00 3e 00 } //1 </yeKdetpyrcnE>
		$a_01_4 = {3c 00 2f 00 68 00 74 00 67 00 6e 00 65 00 4c 00 65 00 6c 00 69 00 46 00 6c 00 61 00 6e 00 69 00 67 00 69 00 72 00 4f 00 3e 00 } //1 </htgneLeliFlanigirO>
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=9
 
}