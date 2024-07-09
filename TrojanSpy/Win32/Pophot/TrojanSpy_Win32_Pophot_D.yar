
rule TrojanSpy_Win32_Pophot_D{
	meta:
		description = "TrojanSpy:Win32/Pophot.D,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_02_0 = {50 b9 e8 03 00 00 ba 01 00 00 00 b8 ?? ?? ?? ?? e8 ?? ?? ff ff 8b 55 ?? b9 ?? ?? ?? ?? b8 02 00 00 80 e8 ?? ?? ff ff 8b 45 fc e8 ?? ?? ff ff 83 f8 0a 0f 8f ?? ?? 00 00 8d 45 ?? 50 b9 ?? ?? ?? ?? ba ?? ?? ?? ?? b8 02 00 00 80 e8 ?? ?? ff ff 8b 55 ?? 8d 45 fc b9 ?? ?? ?? ?? e8 ?? ?? ff ff 8b 45 fc 50 } //4
		$a_02_1 = {8b d8 8b 45 dc e8 ?? ?? ff ff 8d 45 e0 ba ?? ?? ?? ?? e8 ?? ?? ff ff 6a 64 e8 ?? ?? ff ff e8 ?? ?? ff ff 2b c3 3d 60 ea 00 00 0f 82 ?? ?? 00 00 e8 ?? ?? ff ff 2b c6 3d b8 0b 00 00 } //2
		$a_02_2 = {b9 e8 03 00 00 ba 01 00 00 00 b8 ?? ?? ?? ?? e8 ?? ?? ff ff 8d 45 b0 50 b9 64 00 00 00 ba 01 00 00 00 b8 ?? ?? ?? ?? e8 ?? ?? ff ff 8b 45 b0 50 8d 45 ac 50 } //2
		$a_00_3 = {41 56 50 2e 50 72 6f 64 75 63 74 5f 4e 6f 74 69 66 69 63 61 74 69 6f 6e } //1 AVP.Product_Notification
		$a_00_4 = {63 6a 2e 62 61 74 } //1 cj.bat
	condition:
		((#a_02_0  & 1)*4+(#a_02_1  & 1)*2+(#a_02_2  & 1)*2+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=6
 
}