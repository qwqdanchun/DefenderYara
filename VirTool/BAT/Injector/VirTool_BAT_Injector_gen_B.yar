
rule VirTool_BAT_Injector_gen_B{
	meta:
		description = "VirTool:BAT/Injector.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 6f 6c 79 44 65 63 00 49 6e 70 75 74 00 4b 69 6c 6c 65 72 } //01 00  潐祬敄c湉異t楋汬牥
		$a_01_1 = {52 65 76 65 72 73 65 53 74 72 69 6e 67 00 73 00 43 53 68 61 72 70 } //01 00  敒敶獲卥牴湩gs千慨灲
		$a_01_2 = {43 53 68 61 72 70 00 53 79 73 44 4c 4c 00 53 79 73 4d 61 6e 61 67 65 6d 65 6e 74 00 50 6c 61 74 46 6f 72 6d 38 36 42 69 74 } //01 00 
		$a_01_3 = {58 49 20 73 73 61 6c 63 20 63 69 6c 62 75 70 0a 0d 3b 74 78 65 54 2e 6d 65 74 73 79 53 20 67 6e 69 73 75 0a 0d 3b 6d 65 74 73 79 53 20 67 6e 69 73 75 } //01 00  䥘猠慳捬挠汩畢ੰ㬍硴呥洮瑥祳⁓湧獩ੵ㬍敭獴卹朠楮畳
	condition:
		any of ($a_*)
 
}