
rule Backdoor_Linux_Tsunami_gen_A{
	meta:
		description = "Backdoor:Linux/Tsunami.gen!A,SIGNATURE_TYPE_ELFHSTR_EXT,38 00 32 00 14 00 00 "
		
	strings :
		$a_01_0 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 4d 6f 7a 69 6c 6c 61 2f 34 2e 37 35 20 5b 65 6e 5d 20 28 58 31 31 3b 20 55 3b 20 4c 69 6e 75 78 20 32 2e 32 2e 31 36 2d 33 20 69 36 38 36 29 } //40 User-Agent: Mozilla/4.75 [en] (X11; U; Linux 2.2.16-3 i686)
		$a_01_1 = {55 73 65 72 2d 41 67 65 6e 74 3a 20 4d 6f 7a 69 6c 6c 61 2f 34 2e 37 35 20 5b 65 6e 5d 20 28 58 31 31 3b 20 55 3b 20 4c 69 6e 75 78 20 32 2e 36 2e 31 36 2d 33 20 69 36 38 36 29 } //40 User-Agent: Mozilla/4.75 [en] (X11; U; Linux 2.6.16-3 i686)
		$a_01_2 = {54 53 55 4e 41 4d 49 00 50 41 4e 00 } //10 協乕䵁I䅐N
		$a_01_3 = {55 44 50 00 50 41 4e 00 54 53 55 4e 41 4d 49 00 } //10 䑕P䅐N協乕䵁I
		$a_01_4 = {55 44 50 00 44 4f 53 00 54 53 55 4e 41 4d 49 00 } //10 䑕P佄S協乕䵁I
		$a_01_5 = {55 4e 4b 4e 4f 57 4e 00 55 44 50 00 53 59 4e 46 4c 4f 4f 44 00 } //10
		$a_01_6 = {52 41 4e 44 4f 4d 46 4c 4f 4f 44 00 4e 53 41 43 4b 46 4c 4f 4f 44 00 } //10
		$a_01_7 = {55 44 50 00 53 59 4e 00 4d 52 41 00 58 39 53 59 4e 00 } //10 䑕P奓N前A㥘奓N
		$a_01_8 = {55 44 50 00 53 59 4e 00 4d 52 41 00 55 44 4f 35 33 00 } //10 䑕P奓N前A䑕㕏3
		$a_01_9 = {46 49 4e 00 50 53 48 00 41 43 4b 00 4e 53 41 43 4b 00 } //10 䥆N卐H䍁K华䍁K
		$a_01_10 = {44 49 53 41 42 4c 45 00 45 4e 41 42 4c 45 00 4b 49 4c 4c 00 47 45 54 00 56 45 52 53 49 4f 4e 00 4b 49 4c 4c 41 4c 4c 00 } //5 䥄䅓䱂E久䉁䕌䬀䱉L䕇T䕖卒佉N䥋䱌䱁L
		$a_01_11 = {48 45 4c 50 00 4b 49 4c 4c 41 4c 4c 00 56 45 52 53 49 4f 4e 00 47 45 54 00 4b 49 4c 4c 00 45 4e 41 42 4c 45 00 44 49 53 41 42 4c 45 00 } //5
		$a_01_12 = {56 45 52 53 49 4f 4e 00 47 45 54 00 4b 49 4c 4c 00 00 00 00 45 4e 41 42 4c 45 00 00 44 49 53 41 42 4c 45 00 } //5
		$a_01_13 = {56 45 52 53 49 4f 4e 00 4b 49 4c 4c 41 4c 4c 00 48 45 4c 50 00 } //5
		$a_01_14 = {47 45 54 00 56 45 52 53 49 4f 4e 00 4b 49 4c 4c 41 4c 4c 00 49 52 43 20 00 } //5
		$a_01_15 = {4e 4f 54 49 43 45 20 25 73 20 3a 4b 61 69 74 65 6e 20 77 61 20 67 6f 72 61 6b 75 0a 00 } //1
		$a_01_16 = {4e 4f 54 49 43 45 20 25 73 20 3a 4b 61 69 74 65 6e 20 62 79 20 50 73 49 6b 30 0a 00 } //1
		$a_01_17 = {4e 4f 54 49 43 45 20 25 73 20 3a 4b 2d 73 65 63 75 72 69 74 79 20 76 31 2e 32 30 31 32 20 62 79 20 62 61 6e 64 6f 7a 0a 00 } //1
		$a_01_18 = {4e 4f 54 49 43 45 20 25 73 20 3a 4b 69 6c 6c 69 6e 67 20 70 69 64 20 25 64 2e 0a 00 } //1
		$a_01_19 = {4e 4f 54 49 43 45 20 25 73 20 3a 78 65 6e 20 76 31 2e 30 0a 00 } //1
	condition:
		((#a_01_0  & 1)*40+(#a_01_1  & 1)*40+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10+(#a_01_6  & 1)*10+(#a_01_7  & 1)*10+(#a_01_8  & 1)*10+(#a_01_9  & 1)*10+(#a_01_10  & 1)*5+(#a_01_11  & 1)*5+(#a_01_12  & 1)*5+(#a_01_13  & 1)*5+(#a_01_14  & 1)*5+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1) >=50
 
}