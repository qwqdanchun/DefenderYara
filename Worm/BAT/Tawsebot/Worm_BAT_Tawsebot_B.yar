
rule Worm_BAT_Tawsebot_B{
	meta:
		description = "Worm:BAT/Tawsebot.B,SIGNATURE_TYPE_PEHSTR_EXT,56 01 56 01 13 00 00 "
		
	strings :
		$a_01_0 = {57 6f 52 6d 59 } //100 WoRmY
		$a_00_1 = {69 6e 66 65 63 74 44 72 69 76 65 73 } //100 infectDrives
		$a_00_2 = {62 6f 74 55 73 65 72 } //100 botUser
		$a_00_3 = {62 6f 74 50 61 73 73 } //100 botPass
		$a_00_4 = {6f 00 6e 00 70 00 61 00 79 00 72 00 6f 00 6c 00 6c 00 2e 00 6e 00 65 00 74 00 } //100 onpayroll.net
		$a_00_5 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //10 [autorun]
		$a_00_6 = {49 00 6e 00 66 00 65 00 63 00 74 00 65 00 64 00 20 00 21 00 } //10 Infected !
		$a_00_7 = {50 00 32 00 50 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 73 00 21 00 } //10 P2P Folders!
		$a_00_8 = {77 00 69 00 72 00 65 00 73 00 68 00 61 00 72 00 6b 00 20 00 6e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 20 00 61 00 6e 00 61 00 6c 00 79 00 7a 00 65 00 72 00 } //10 wireshark network analyzer
		$a_00_9 = {4e 00 49 00 43 00 4b 00 } //10 NICK
		$a_00_10 = {4a 00 4f 00 49 00 4e 00 } //10 JOIN
		$a_00_11 = {51 00 55 00 49 00 54 00 } //10 QUIT
		$a_00_12 = {5c 00 4d 00 79 00 20 00 53 00 68 00 61 00 72 00 65 00 64 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 } //1 \My Shared Folder
		$a_00_13 = {5c 00 53 00 68 00 61 00 72 00 65 00 64 00 } //1 \Shared
		$a_00_14 = {5c 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 } //1 \Downloads
		$a_00_15 = {5c 00 69 00 6e 00 63 00 6f 00 6d 00 69 00 6e 00 67 00 } //1 \incoming
		$a_00_16 = {5c 00 73 00 68 00 61 00 72 00 65 00 64 00 20 00 66 00 6f 00 6c 00 64 00 65 00 72 00 } //1 \shared folder
		$a_00_17 = {5c 00 67 00 72 00 6f 00 6b 00 73 00 74 00 65 00 72 00 5c 00 6d 00 79 00 20 00 67 00 72 00 6f 00 6b 00 73 00 74 00 65 00 72 00 } //1 \grokster\my grokster
		$a_00_18 = {5c 00 74 00 65 00 73 00 6c 00 61 00 5c 00 66 00 69 00 6c 00 65 00 73 00 } //1 \tesla\files
	condition:
		((#a_01_0  & 1)*100+(#a_00_1  & 1)*100+(#a_00_2  & 1)*100+(#a_00_3  & 1)*100+(#a_00_4  & 1)*100+(#a_00_5  & 1)*10+(#a_00_6  & 1)*10+(#a_00_7  & 1)*10+(#a_00_8  & 1)*10+(#a_00_9  & 1)*10+(#a_00_10  & 1)*10+(#a_00_11  & 1)*10+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_00_14  & 1)*1+(#a_00_15  & 1)*1+(#a_00_16  & 1)*1+(#a_00_17  & 1)*1+(#a_00_18  & 1)*1) >=342
 
}