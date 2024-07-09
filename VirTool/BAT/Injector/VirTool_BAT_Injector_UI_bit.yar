
rule VirTool_BAT_Injector_UI_bit{
	meta:
		description = "VirTool:BAT/Injector.UI!bit,SIGNATURE_TYPE_PEHSTR_EXT,ffffff99 00 ffffff99 00 0c 00 00 "
		
	strings :
		$a_03_0 = {2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 00 90 09 08 00 2d ?? ?? ?? ?? 2d } //100
		$a_01_1 = {00 3c 4d 6f 64 75 6c 65 3e 00 } //10 㰀潍畤敬>
		$a_01_2 = {00 43 6f 6d 70 69 6c 65 72 47 65 6e 65 72 61 74 65 64 41 74 74 72 69 62 75 74 65 00 } //10 䌀浯楰敬䝲湥牥瑡摥瑁牴扩瑵e
		$a_01_3 = {00 53 79 73 74 65 6d 2e 43 6f 64 65 44 6f 6d 2e 43 6f 6d 70 69 6c 65 72 00 } //10
		$a_01_4 = {89 50 4e 47 0d 0a 1a 0a 00 00 00 0d 49 48 44 52 00 } //10
		$a_01_5 = {15 53 79 73 74 65 6d 2e 44 72 61 77 69 6e 67 2e 42 69 74 6d 61 70 } //10
		$a_01_6 = {00 67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e 00 } //1
		$a_01_7 = {00 67 65 74 5f 45 6e 74 72 79 50 6f 69 6e 74 00 } //1 最瑥䕟瑮祲潐湩t
		$a_01_8 = {00 49 6e 76 6f 6b 65 00 } //1 䤀癮歯e
		$a_01_9 = {00 41 73 73 65 6d 62 6c 79 00 } //1 䄀獳浥汢y
		$a_01_10 = {00 41 70 70 44 6f 6d 61 69 6e 00 } //1
		$a_01_11 = {00 47 65 74 44 6f 6d 61 69 6e 00 } //1
	condition:
		((#a_03_0  & 1)*100+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*10+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1) >=153
 
}