
rule Worm_Win32_Mirbot_A{
	meta:
		description = "Worm:Win32/Mirbot.A,SIGNATURE_TYPE_PEHSTR_EXT,37 00 32 00 0b 00 00 "
		
	strings :
		$a_03_0 = {5c 6d 42 6f 74 5c [0-20] 5c 52 65 6c 65 61 73 65 5c 6d [0-0f] 2e 70 64 62 } //50
		$a_01_1 = {5c 6d 42 6f 74 5c 52 65 6c 65 61 73 65 5c 6d 42 6f 74 2e 70 64 62 } //50 \mBot\Release\mBot.pdb
		$a_01_2 = {5b 00 6d 00 42 00 6f 00 74 00 7c 00 } //2 [mBot|
		$a_01_3 = {23 00 64 00 65 00 76 00 62 00 6f 00 74 00 } //2 #devbot
		$a_81_4 = {72 65 6d 6f 76 69 6e 67 20 62 6f 74 } //2 removing bot
		$a_81_5 = {69 6d 73 70 72 65 61 64 } //2 imspread
		$a_81_6 = {73 75 63 63 65 73 73 66 75 6c 6c 79 20 73 70 72 65 61 64 69 6e 67 20 6d 65 73 73 61 67 65 20 76 69 61 20 } //2 successfully spreading message via 
		$a_01_7 = {5f 4f 73 63 61 72 5f 53 74 61 74 75 73 4e 6f 74 69 66 79 } //2 _Oscar_StatusNotify
		$a_01_8 = {6b 69 6c 6c 73 70 72 65 61 64 } //1 killspread
		$a_01_9 = {55 00 53 00 45 00 52 00 20 00 } //1 USER 
		$a_03_10 = {50 00 49 00 4e 00 47 00 20 00 3a 00 [0-32] 50 00 4f 00 4e 00 47 00 20 00 3a 00 } //1
	condition:
		((#a_03_0  & 1)*50+(#a_01_1  & 1)*50+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_81_4  & 1)*2+(#a_81_5  & 1)*2+(#a_81_6  & 1)*2+(#a_01_7  & 1)*2+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_03_10  & 1)*1) >=50
 
}