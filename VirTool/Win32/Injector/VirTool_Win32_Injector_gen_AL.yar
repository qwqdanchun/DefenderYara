
rule VirTool_Win32_Injector_gen_AL{
	meta:
		description = "VirTool:Win32/Injector.gen!AL,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_03_0 = {6a 40 68 00 30 00 00 ff b5 ?? ?? ?? ?? ff 77 34 ff b5 } //2
		$a_03_1 = {66 8b 57 06 83 7e 08 00 74 11 ff 77 38 ff 76 08 e8 ?? ?? ?? ?? 01 85 ?? ?? ?? ?? 8b 85 ?? ?? ?? ?? 3b 46 14 76 09 ff 76 14 8f 85 cc fb ff ff 83 c6 28 66 4a 75 ce } //2
		$a_01_2 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 00 53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 00 52 65 73 75 6d 65 54 68 72 65 61 64 } //1 牗瑩健潲散獳敍潭祲匀瑥桔敲摡潃瑮硥t敒畳敭桔敲摡
		$a_01_3 = {43 3a 5c 66 69 6c 65 2e 65 78 65 00 43 3a 5c 73 61 6d 70 6c 65 2e 65 78 65 } //1
		$a_01_4 = {56 4d 57 41 52 45 00 51 45 4d 55 00 56 42 4f 58 00 56 49 52 54 55 41 4c } //1 䵖䅗䕒儀䵅U䉖塏嘀剉啔䱁
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}