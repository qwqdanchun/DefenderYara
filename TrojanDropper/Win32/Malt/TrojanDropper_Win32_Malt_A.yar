
rule TrojanDropper_Win32_Malt_A{
	meta:
		description = "TrojanDropper:Win32/Malt.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 08 00 00 "
		
	strings :
		$a_00_0 = {2f 00 2f 00 66 00 6f 00 63 00 6b 00 69 00 5c 00 5c 00 } //1 //focki\\
		$a_00_1 = {49 00 6e 00 63 00 6f 00 72 00 72 00 65 00 63 00 74 00 20 00 73 00 69 00 7a 00 65 00 20 00 64 00 65 00 73 00 63 00 72 00 69 00 70 00 74 00 6f 00 72 00 20 00 69 00 6e 00 20 00 47 00 6f 00 73 00 74 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 } //1 Incorrect size descriptor in Gost decryption
		$a_01_2 = {62 6f 78 69 65 } //1 boxie
		$a_00_3 = {67 00 73 00 64 00 61 00 76 00 68 00 67 00 76 00 73 00 64 00 61 00 25 00 25 00 24 00 26 00 25 00 24 00 26 00 25 00 24 00 68 00 61 00 5a 00 6c 00 30 00 6f 00 68 00 } //1 gsdavhgvsda%%$&%$&%$haZl0oh
		$a_00_4 = {2a 00 5c 00 41 00 43 00 3a 00 5c 00 44 00 6f 00 6b 00 75 00 6d 00 65 00 6e 00 74 00 65 00 20 00 75 00 6e 00 64 00 20 00 45 00 69 00 6e 00 73 00 74 00 65 00 6c 00 6c 00 75 00 6e 00 67 00 65 00 6e 00 5c 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 23 00 43 00 4f 00 44 00 49 00 4e 00 47 00 23 00 5c 00 76 00 32 00 2e 00 32 00 5c 00 76 00 32 00 2e 00 32 00 5c 00 73 00 74 00 75 00 62 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //1 *\AC:\Dokumente und Einstellungen\Administrator\Desktop\#CODING#\v2.2\v2.2\stub\Project1.vbp
		$a_00_5 = {26 00 25 00 26 00 25 00 26 00 25 00 26 00 25 00 } //1 &%&%&%&%
		$a_00_6 = {5c 00 4d 00 65 00 6c 00 74 00 2e 00 62 00 61 00 74 00 } //1 \Melt.bat
		$a_00_7 = {64 00 75 00 6d 00 62 00 66 00 75 00 63 00 6b 00 } //1 dumbfuck
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=7
 
}