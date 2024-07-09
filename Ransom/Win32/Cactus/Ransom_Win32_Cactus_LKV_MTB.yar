
rule Ransom_Win32_Cactus_LKV_MTB{
	meta:
		description = "Ransom:Win32/Cactus.LKV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 "
		
	strings :
		$a_02_0 = {63 00 61 00 63 00 74 00 75 00 73 00 40 00 [0-20] 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //1
		$a_01_1 = {59 00 6f 00 75 00 72 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 73 00 20 00 77 00 65 00 72 00 65 00 20 00 61 00 63 00 63 00 65 00 73 00 73 00 65 00 64 00 20 00 61 00 6e 00 64 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 62 00 79 00 20 00 43 00 61 00 63 00 74 00 75 00 73 00 } //1 Your systems were accessed and encrypted by Cactus
		$a_01_2 = {59 00 6f 00 75 00 72 00 20 00 75 00 6e 00 69 00 71 00 75 00 65 00 20 00 49 00 44 00 3a 00 } //1 Your unique ID:
		$a_03_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 [0-ff] 2e 00 6f 00 6e 00 69 00 6f 00 6e 00 2f 00 63 00 6f 00 6e 00 74 00 61 00 63 00 74 00 2f 00 43 00 61 00 63 00 74 00 75 00 73 00 5f 00 53 00 75 00 70 00 70 00 6f 00 72 00 74 00 } //1
		$a_00_4 = {43 00 61 00 43 00 74 00 55 00 73 00 2e 00 52 00 65 00 41 00 64 00 4d 00 65 00 2e 00 74 00 78 00 74 00 } //1 CaCtUs.ReAdMe.txt
		$a_01_5 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 } //1 vssadmin delete shadows /all /quiet
		$a_00_6 = {63 00 41 00 63 00 54 00 75 00 53 00 } //1 cAcTuS
	condition:
		((#a_02_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_00_4  & 1)*1+(#a_01_5  & 1)*1+(#a_00_6  & 1)*1) >=4
 
}