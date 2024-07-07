
rule Ransom_MSIL_Dowviki_A{
	meta:
		description = "Ransom:MSIL/Dowviki.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {2e 00 76 00 69 00 6e 00 64 00 6f 00 77 00 73 00 } //2 .vindows
		$a_01_1 = {74 00 68 00 69 00 73 00 20 00 6e 00 6f 00 74 00 20 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 76 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 73 00 75 00 70 00 70 00 6f 00 72 00 74 00 } //2 this not microsoft vindows support
		$a_01_2 = {63 00 61 00 6c 00 6c 00 20 00 6c 00 65 00 76 00 65 00 6c 00 20 00 35 00 20 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 73 00 75 00 70 00 70 00 6f 00 72 00 74 00 20 00 74 00 65 00 63 00 68 00 6e 00 69 00 63 00 69 00 61 00 6e 00 20 00 61 00 74 00 20 00 31 00 2d 00 38 00 34 00 34 00 2d 00 36 00 30 00 39 00 2d 00 33 00 31 00 39 00 32 00 } //2 call level 5 microsoft support technician at 1-844-609-3192
		$a_01_3 = {66 00 69 00 6c 00 65 00 73 00 20 00 62 00 61 00 63 00 6b 00 20 00 66 00 6f 00 72 00 20 00 61 00 20 00 6f 00 6e 00 65 00 20 00 74 00 69 00 6d 00 65 00 20 00 63 00 68 00 61 00 72 00 67 00 65 00 20 00 6f 00 66 00 20 00 24 00 33 00 34 00 39 00 2e 00 39 00 39 00 } //2 files back for a one time charge of $349.99
		$a_01_4 = {56 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4c 00 6f 00 63 00 6b 00 65 00 72 00 } //2 Vindows Locker
		$a_01_5 = {56 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2e 00 65 00 78 00 65 00 } //2 Vindows.exe
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2) >=6
 
}