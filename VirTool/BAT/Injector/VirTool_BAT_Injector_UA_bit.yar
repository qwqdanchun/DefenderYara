
rule VirTool_BAT_Injector_UA_bit{
	meta:
		description = "VirTool:BAT/Injector.UA!bit,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 08 00 00 "
		
	strings :
		$a_03_0 = {0c 08 03 61 0c 06 08 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 0a 07 17 58 0b 07 02 6f 90 01 01 00 00 0a 32 d5 06 2a 90 00 } //10
		$a_01_1 = {52 65 70 6c 61 63 65 00 43 6f 6d 70 69 6c 65 41 73 73 65 6d 62 6c 79 46 72 6f 6d 53 6f 75 72 63 65 00 67 65 74 5f 43 6f 6d 70 69 6c 65 64 41 73 73 65 6d 62 6c 79 00 67 65 74 5f 45 6e 74 72 79 50 6f 69 6e 74 00 49 6e 76 6f 6b 65 } //5 敒汰捡e潃灭汩䅥獳浥汢䙹潲卭畯捲e敧彴潃灭汩摥獁敳扭祬最瑥䕟瑮祲潐湩t湉潶敫
		$a_01_2 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 44 00 72 00 61 00 77 00 69 00 6e 00 67 00 2e 00 64 00 6c 00 6c 00 } //1 System.Drawing.dll
		$a_01_3 = {55 00 33 00 6c 00 7a 00 64 00 47 00 56 00 74 00 4c 00 6b 00 52 00 79 00 59 00 58 00 64 00 70 00 62 00 6d 00 63 00 75 00 5a 00 47 00 78 00 73 00 } //1 U3lzdGVtLkRyYXdpbmcuZGxs
		$a_01_4 = {2f 00 6f 00 70 00 74 00 69 00 6d 00 69 00 7a 00 65 00 2b 00 20 00 2f 00 70 00 6c 00 61 00 74 00 66 00 6f 00 72 00 6d 00 3a 00 58 00 38 00 36 00 20 00 2f 00 64 00 65 00 62 00 75 00 67 00 2b 00 20 00 2f 00 74 00 61 00 72 00 67 00 65 00 74 00 3a 00 77 00 69 00 6e 00 65 00 78 00 65 00 } //1 /optimize+ /platform:X86 /debug+ /target:winexe
		$a_01_5 = {4c 00 32 00 39 00 77 00 64 00 47 00 6c 00 74 00 61 00 58 00 70 00 6c 00 4b 00 79 00 41 00 76 00 63 00 47 00 78 00 68 00 64 00 47 00 5a 00 76 00 63 00 6d 00 30 00 36 00 57 00 44 00 67 00 32 00 49 00 43 00 39 00 6b 00 5a 00 57 00 4a 00 31 00 5a 00 79 00 73 00 67 00 4c 00 33 00 52 00 68 00 63 00 6d 00 64 00 6c 00 64 00 44 00 70 00 33 00 61 00 57 00 35 00 6c 00 65 00 47 00 55 00 3d 00 } //1 L29wdGltaXplKyAvcGxhdGZvcm06WDg2IC9kZWJ1ZysgL3RhcmdldDp3aW5leGU=
		$a_03_6 = {23 00 72 00 65 00 73 00 6e 00 61 00 6d 00 65 00 23 00 90 02 30 23 00 70 00 61 00 73 00 73 00 23 00 90 00 } //1
		$a_03_7 = {49 00 33 00 4a 00 6c 00 63 00 32 00 35 00 68 00 62 00 57 00 55 00 6a 00 90 02 30 49 00 33 00 42 00 68 00 63 00 33 00 4d 00 6a 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*5+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1) >=18
 
}