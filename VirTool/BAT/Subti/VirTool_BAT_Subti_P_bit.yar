
rule VirTool_BAT_Subti_P_bit{
	meta:
		description = "VirTool:BAT/Subti.P!bit,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 "
		
	strings :
		$a_03_0 = {25 47 07 08 72 90 01 02 00 70 6f 90 01 01 00 00 0a 5d 91 08 1b 58 07 8e 69 58 1f 1f 5f 63 20 90 01 01 00 00 00 5f d2 61 d2 52 08 17 58 0c 90 09 07 00 06 08 8f 90 01 01 00 00 01 90 00 } //5
		$a_01_1 = {00 67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e 00 } //1
		$a_01_2 = {00 67 65 74 5f 4c 65 6e 67 74 68 00 } //1 最瑥䱟湥瑧h
		$a_01_3 = {00 47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 00 } //1 䜀瑥硅捥瑵湩䅧獳浥汢y
		$a_01_4 = {00 67 65 74 5f 45 6e 74 72 79 50 6f 69 6e 74 00 } //1 最瑥䕟瑮祲潐湩t
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=9
 
}