
rule Trojan_BAT_XWorm_CCDT_MTB{
	meta:
		description = "Trojan:BAT/XWorm.CCDT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {65 00 6b 00 6f 00 76 00 6e 00 49 00 2e 00 74 00 6e 00 69 00 6f 00 50 00 79 00 72 00 74 00 6e 00 45 00 2e 00 64 00 61 00 6f 00 4c 00 } //1 ekovnI.tnioPyrtnE.daoL
		$a_01_1 = {34 00 44 00 35 00 41 00 39 00 30 00 30 00 30 00 30 00 33 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 34 00 30 00 30 00 30 00 30 00 30 00 30 00 46 00 46 00 46 00 46 00 30 00 30 00 30 00 30 00 42 00 38 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 34 00 30 00 } //1 4D5A90000300000004000000FFFF0000B80000000000000040
		$a_01_2 = {30 00 30 00 31 00 31 00 31 00 33 00 37 00 32 00 39 00 46 00 30 00 41 00 30 00 30 00 37 00 30 00 31 00 36 00 32 00 38 00 36 00 41 00 30 00 30 00 30 00 30 00 30 00 41 00 31 00 36 00 33 00 33 00 32 00 30 00 37 00 45 00 32 00 36 00 30 00 30 00 30 00 30 00 30 00 34 00 36 00 46 00 41 00 35 00 30 00 30 00 30 00 30 00 30 00 41 00 44 00 45 00 30 00 46 00 32 00 35 00 32 00 38 00 32 00 34 00 30 00 30 00 30 00 30 00 30 00 41 00 31 00 33 00 30 00 34 00 32 00 38 00 32 00 36 00 30 00 30 00 30 00 30 00 30 00 41 00 44 00 45 00 30 00 30 00 33 00 38 00 36 00 41 00 30 00 34 00 30 00 30 00 30 00 30 00 31 00 31 00 31 00 33 00 37 00 32 00 42 00 31 00 30 00 41 00 30 00 30 00 37 00 30 00 31 00 36 00 } //1 001113729F0A007016286A00000A1633207E260000046FA500000ADE0F25282400000A1304282600000ADE00386A040000111372B10A007016
		$a_01_3 = {36 00 46 00 30 00 30 00 34 00 39 00 34 00 45 00 34 00 34 00 34 00 31 00 35 00 34 00 34 00 35 00 30 00 30 00 35 00 33 00 37 00 30 00 37 00 32 00 36 00 35 00 36 00 31 00 36 00 34 00 30 00 30 00 35 00 35 00 34 00 31 00 34 00 33 00 30 00 30 00 34 00 31 00 36 00 45 00 37 00 34 00 36 00 39 00 37 00 36 00 } //1 6F00494E44415445005370726561640055414300416E746976
		$a_01_4 = {37 00 39 00 34 00 33 00 36 00 46 00 36 00 44 00 37 00 30 00 36 00 31 00 36 00 45 00 37 00 39 00 34 00 31 00 37 00 34 00 37 00 34 00 37 00 32 00 36 00 39 00 36 00 32 00 37 00 35 00 37 00 34 00 36 00 35 00 30 00 30 00 34 00 31 00 37 00 33 00 37 00 33 00 36 00 35 00 36 00 44 00 36 00 32 00 36 00 43 00 } //1 79436F6D70616E7941747472696275746500417373656D626C
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}