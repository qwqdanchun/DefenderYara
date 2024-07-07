
rule Backdoor_Linux_iWorm_A{
	meta:
		description = "Backdoor:Linux/iWorm.A,SIGNATURE_TYPE_MACHOHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2f 74 6d 70 2f 2e 4a 61 76 61 57 } //1 /tmp/.JavaW
		$a_03_1 = {47 45 54 20 25 73 20 48 54 54 50 2f 31 2e 30 90 02 10 48 6f 73 74 3a 20 25 73 90 02 10 41 63 63 65 70 74 3a 20 74 65 78 74 2f 68 74 6d 6c 90 00 } //1
		$a_01_2 = {25 32 64 25 32 64 25 32 64 25 32 64 25 32 64 25 32 64 5a 00 25 34 64 25 32 64 25 32 64 25 32 64 25 32 64 25 32 64 5a 00 4f 53 58 00 30 2e 32 32 } //1 ㈥╤搲㈥╤搲㈥╤搲Z㐥╤搲㈥╤搲㈥╤搲Z协X⸰㈲
		$a_03_3 = {65 63 6b 65 79 2e 51 90 02 20 75 69 64 00 25 32 78 00 68 74 74 70 3a 2f 2f 90 00 } //1
		$a_01_4 = {28 66 6f 72 20 67 65 6e 65 72 61 74 6f 72 29 00 28 66 6f 72 20 73 74 61 74 65 29 00 28 66 6f 72 20 63 6f 6e 74 72 6f 6c 29 00 } //1 昨牯朠湥牥瑡牯)昨牯猠慴整)昨牯挠湯牴汯)
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}