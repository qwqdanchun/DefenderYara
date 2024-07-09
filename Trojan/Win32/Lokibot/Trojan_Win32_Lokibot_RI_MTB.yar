
rule Trojan_Win32_Lokibot_RI_MTB{
	meta:
		description = "Trojan:Win32/Lokibot.RI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 "
		
	strings :
		$a_03_0 = {33 d2 f7 f6 85 d2 75 [0-1f] 8b c3 03 c1 [0-1f] 80 30 9d [0-1f] 41 81 f9 0f 08 01 00 75 } //10
		$a_03_1 = {33 d2 f7 f3 85 d2 75 [0-1f] 8b c6 03 c1 [0-1f] b2 [0-1f] 30 10 [0-1f] 41 81 f9 ?? ?? ?? ?? 75 } //10
		$a_03_2 = {33 d2 f7 f3 85 d2 75 [0-1f] 8b ?? 03 d1 [0-1f] b0 [0-1f] 30 02 [0-1f] 41 81 f9 0d 24 01 00 75 } //10
		$a_01_3 = {90 90 90 90 90 8a 84 85 e4 fb ff ff 32 45 eb 8b 55 ec 88 02 90 90 46 ff 4d e4 0f 85 } //5
		$a_03_4 = {25 ff 00 00 00 89 84 bd ?? ?? ?? ?? 90 90 8b c6 90 0a 3f 00 8b f8 90 90 [0-05] 8a 84 9d 90 1b 00 [0-05] 8b 94 bd 90 1b 00 89 94 9d 90 1b 00 } //5
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_03_2  & 1)*10+(#a_01_3  & 1)*5+(#a_03_4  & 1)*5) >=10
 
}