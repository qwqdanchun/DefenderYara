
rule Trojan_Win32_Salgorea_A_dha{
	meta:
		description = "Trojan:Win32/Salgorea.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_03_0 = {81 fe 80 96 98 00 7c df be 02 00 00 00 33 c9 81 ee ?? ?? ?? ?? 8b ff 8d 84 0e ?? ?? ?? ?? 99 bf 05 00 00 00 f7 ff 41 30 91 ?? ?? ?? ?? 81 f9 60 1e 00 00 } //1
		$a_03_1 = {3d 92 48 52 85 75 09 b0 01 a2 ?? ?? ?? ?? 5d c3 3d 4c f7 5d b0 } //1
		$a_03_2 = {0f b6 0e 33 c8 81 e1 ff 00 00 00 4a 46 81 f9 00 01 00 00 73 0a c1 e8 08 33 04 8d ?? ?? ?? ?? 85 d2 75 dd } //1
		$a_01_3 = {73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 00 00 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 2f 00 6d 00 69 00 6e 00 20 00 22 00 22 00 20 00 22 00 } //1
		$a_01_4 = {72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 2f 00 73 00 61 00 66 00 65 00 6d 00 6f 00 64 00 65 00 } //1 rundll32.exe /safemode
		$a_01_5 = {48 42 66 89 01 0f b7 84 55 fc f7 ff ff 8d 8c 55 fc f7 ff ff 33 db 66 3b d8 75 e5 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}