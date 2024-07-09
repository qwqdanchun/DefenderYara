
rule PWS_Win32_Zbot_AMH{
	meta:
		description = "PWS:Win32/Zbot.AMH,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {6a 75 58 66 89 85 ?? ?? ff ff 6a 73 58 66 89 85 ?? ?? ff ff 6a 65 58 66 89 85 ?? ?? ff ff 6a 72 58 66 89 85 ?? ?? ff ff 6a 33 58 66 89 85 ?? ?? ff ff 6a 32 58 66 89 85 ?? ?? ff ff 6a 2e 58 66 89 85 ?? ?? ff ff 6a 64 58 } //2
		$a_00_1 = {62 63 30 30 35 39 35 34 34 30 65 38 30 31 66 38 61 35 64 32 61 32 61 64 31 33 62 39 37 39 31 62 } //1 bc00595440e801f8a5d2a2ad13b9791b
		$a_00_2 = {49 6e 69 74 53 65 63 75 72 69 74 79 49 6e 74 65 72 66 61 63 65 41 00 } //1
		$a_00_3 = {73 00 63 00 68 00 61 00 6e 00 6e 00 65 00 6c 00 2e 00 64 00 6c 00 6c 00 } //1 schannel.dll
		$a_00_4 = {5f 77 76 3d 25 6c 73 00 } //1 睟㵶氥s
	condition:
		((#a_03_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}