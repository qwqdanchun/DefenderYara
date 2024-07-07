
rule Ransom_MSIL_Encruby{
	meta:
		description = "Ransom:MSIL/Encruby,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 07 00 00 "
		
	strings :
		$a_01_0 = {59 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //1 Your files have been encrypted
		$a_01_1 = {42 00 6c 00 61 00 63 00 6b 00 20 00 52 00 75 00 62 00 79 00 20 00 44 00 65 00 63 00 72 00 79 00 70 00 74 00 6f 00 72 00 } //2 Black Ruby Decryptor
		$a_01_2 = {48 00 4f 00 57 00 2d 00 54 00 4f 00 2d 00 44 00 45 00 43 00 52 00 59 00 50 00 54 00 2d 00 46 00 49 00 4c 00 45 00 53 00 2e 00 74 00 78 00 74 00 } //2 HOW-TO-DECRYPT-FILES.txt
		$a_01_3 = {2e 00 42 00 6c 00 61 00 63 00 6b 00 52 00 75 00 62 00 79 00 } //2 .BlackRuby
		$a_01_4 = {2a 00 2a 00 2a 00 20 00 41 00 6e 00 79 00 20 00 61 00 74 00 74 00 65 00 6d 00 70 00 74 00 73 00 20 00 74 00 6f 00 20 00 67 00 65 00 74 00 20 00 62 00 61 00 63 00 6b 00 20 00 79 00 6f 00 75 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 77 00 69 00 74 00 68 00 20 00 74 00 68 00 65 00 20 00 74 00 68 00 69 00 72 00 64 00 2d 00 70 00 61 00 72 00 74 00 79 00 20 00 74 00 6f 00 6f 00 6c 00 73 00 20 00 63 00 61 00 6e 00 20 00 62 00 65 00 20 00 66 00 61 00 74 00 61 00 6c 00 20 00 66 00 6f 00 72 00 20 00 79 00 6f 00 75 00 72 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 2a 00 2a 00 2a 00 } //2 *** Any attempts to get back you files with the third-party tools can be fatal for your encrypted files ***
		$a_01_5 = {54 00 68 00 65 00 42 00 6c 00 61 00 63 00 6b 00 52 00 75 00 62 00 79 00 40 00 50 00 72 00 6f 00 74 00 6f 00 6e 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //6 TheBlackRuby@Protonmail.com
		$a_01_6 = {31 00 39 00 53 00 37 00 6b 00 33 00 7a 00 48 00 70 00 68 00 4b 00 69 00 59 00 72 00 38 00 35 00 54 00 32 00 35 00 46 00 6e 00 71 00 64 00 78 00 69 00 7a 00 48 00 63 00 67 00 6d 00 6a 00 6f 00 6a 00 31 00 } //6 19S7k3zHphKiYr85T25FnqdxizHcgmjoj1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*6+(#a_01_6  & 1)*6) >=9
 
}