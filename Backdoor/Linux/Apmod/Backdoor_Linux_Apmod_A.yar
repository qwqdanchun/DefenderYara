
rule Backdoor_Linux_Apmod_A{
	meta:
		description = "Backdoor:Linux/Apmod.A,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {6d 6f 64 5f 90 02 10 2e 63 00 2e 00 2e 74 6d 70 00 25 73 20 31 3e 25 73 00 72 00 25 73 20 31 3e 25 73 20 32 3e 2f 64 65 76 2f 6e 75 6c 6c 00 25 73 20 31 3e 3e 25 73 20 32 3e 2f 64 65 76 2f 6e 75 6c 6c 00 90 02 08 65 63 68 6f 20 2d 6e 20 25 73 20 7c 20 6d 64 35 73 75 6d 20 7c 20 61 77 6b 20 27 7b 70 72 69 6e 74 20 24 31 7d 27 00 25 69 0a 25 73 90 02 14 2f 76 61 72 2f 72 75 6e 2f 75 74 6d 70 00 2f 64 65 76 2f 00 90 00 } //3
		$a_01_1 = {61 70 5f 68 6f 6f 6b 5f 69 6e 73 65 72 74 5f 66 69 6c 74 65 72 00 } //1 灡桟潯彫湩敳瑲晟汩整r
		$a_01_2 = {61 70 5f 72 65 67 69 73 74 65 72 5f 6f 75 74 70 75 74 5f 66 69 6c 74 65 72 00 } //1 灡牟来獩整彲畯灴瑵晟汩整r
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=5
 
}