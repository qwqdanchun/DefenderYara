
rule VirTool_BAT_Injector_TJ_bit{
	meta:
		description = "VirTool:BAT/Injector.TJ!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {8e b7 17 da 11 04 da 02 11 04 91 90 01 01 61 28 21 00 00 0a 72 90 01 01 00 00 70 6f 24 00 00 0a 06 91 61 9c 11 04 17 d6 13 04 90 00 } //01 00 
		$a_01_1 = {42 79 74 65 00 4e 65 77 4c 61 74 65 42 69 6e 64 69 6e 67 00 4c 61 74 65 47 65 74 } //01 00 
		$a_01_2 = {47 65 74 42 79 74 65 73 00 67 65 74 5f 55 54 46 38 00 53 79 73 74 65 6d 2e 49 4f 2e 43 6f 6d 70 72 65 73 73 69 6f 6e 00 44 65 66 6c 61 74 65 53 74 72 65 61 6d 00 53 79 73 74 65 6d 2e 49 4f 00 4d 65 6d 6f 72 79 53 74 72 65 61 6d 00 53 74 72 65 61 6d 00 43 6f 6d 70 72 65 73 73 69 6f 6e 4d 6f 64 65 00 52 65 61 64 00 57 72 69 74 65 00 54 6f 41 72 72 61 79 } //00 00  敇䉴瑹獥最瑥啟䙔8祓瑳浥䤮⹏潃灭敲獳潩n敄汦瑡卥牴慥m祓瑳浥䤮O敍潭祲瑓敲浡匀牴慥m潃灭敲獳潩䵮摯e敒摡圀楲整吀䅯牲祡
	condition:
		any of ($a_*)
 
}