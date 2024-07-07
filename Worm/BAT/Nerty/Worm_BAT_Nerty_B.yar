
rule Worm_BAT_Nerty_B{
	meta:
		description = "Worm:BAT/Nerty.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {46 6c 6f 6f 64 54 68 72 65 61 64 73 } //1 FloodThreads
		$a_01_1 = {2e 73 70 72 65 61 64 65 72 73 00 69 6d 00 6d 73 6e 00 61 69 6d } //1
		$a_01_2 = {25 4d 00 65 00 72 00 71 00 79 00 5b 00 25 00 75 00 73 00 65 00 72 00 25 00 40 00 25 00 70 00 63 00 25 00 5d 00 } //1
		$a_01_3 = {31 7b 00 48 00 61 00 76 00 65 00 41 00 4e 00 69 00 63 00 65 00 44 00 61 00 79 00 2d 00 54 00 65 00 61 00 6d 00 4d 00 65 00 72 00 71 00 79 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}