
rule Worm_BAT_Rowtbut_A{
	meta:
		description = "Worm:BAT/Rowtbut.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 06 00 00 "
		
	strings :
		$a_00_0 = {62 00 6f 00 74 00 2e 00 70 00 68 00 70 00 3f 00 68 00 77 00 69 00 64 00 3d 00 } //1 bot.php?hwid=
		$a_01_1 = {42 6f 74 41 6e 74 77 6f 72 74 00 } //1
		$a_01_2 = {55 53 42 53 70 72 65 61 64 53 74 61 72 74 00 } //1
		$a_01_3 = {53 74 61 72 74 48 54 54 50 46 6c 6f 6f 64 00 } //1
		$a_01_4 = {53 74 61 72 74 49 43 4d 50 46 6c 6f 6f 64 00 } //1
		$a_01_5 = {53 74 61 72 74 53 59 4e 46 6c 6f 6f 64 00 } //1 瑓牡却乙汆潯d
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}