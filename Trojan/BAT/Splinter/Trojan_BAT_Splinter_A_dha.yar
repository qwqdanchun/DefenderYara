
rule Trojan_BAT_Splinter_A_dha{
	meta:
		description = "Trojan:BAT/Splinter.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_00_0 = {34 39 36 39 37 34 35 62 2d 38 66 37 32 2d 34 63 33 63 2d 39 31 65 66 2d 31 30 34 30 35 37 34 30 62 39 63 33 } //3 4969745b-8f72-4c3c-91ef-10405740b9c3
		$a_01_1 = {2e 73 72 63 2e 4e 65 74 77 6f 72 6b 2e 50 61 63 6b 65 74 73 2e 52 65 63 65 69 76 65 } //2 .src.Network.Packets.Receive
		$a_01_2 = {52 5f 48 65 61 72 74 62 65 61 74 4d 65 73 73 61 67 65 } //1 R_HeartbeatMessage
		$a_01_3 = {46 00 69 00 6c 00 65 00 4d 00 67 00 72 00 20 00 67 00 65 00 74 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 73 00 } //1 FileMgr get Folders
		$a_01_4 = {36 00 44 00 30 00 30 00 37 00 33 00 30 00 30 00 37 00 37 00 30 00 30 00 36 00 39 00 30 00 30 00 36 00 45 00 30 00 30 00 36 00 38 00 30 00 30 00 36 00 46 00 30 00 30 00 37 00 33 00 30 00 30 00 37 00 34 00 30 00 30 00 37 00 33 00 30 00 30 00 37 00 36 00 30 00 30 00 36 00 33 00 30 00 30 00 32 00 45 00 30 00 30 00 36 00 45 00 30 00 30 00 36 00 35 00 30 00 30 00 37 00 34 00 30 00 30 00 } //1 6D007300770069006E0068006F00730074007300760063002E006E0065007400
	condition:
		((#a_00_0  & 1)*3+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=3
 
}