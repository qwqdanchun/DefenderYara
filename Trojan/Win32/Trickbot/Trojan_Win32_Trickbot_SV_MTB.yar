
rule Trojan_Win32_Trickbot_SV_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.SV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_03_0 = {55 8b ec 81 ec ?? ?? ?? ?? a1 ?? ?? ?? ?? 33 c5 89 45 fc c7 85 ?? ?? ff ff ?? 00 00 00 c6 85 ?? ?? ff ff ?? c6 85 ?? ?? ff ff ?? c6 85 ?? ?? ff ff ?? c6 85 ?? ?? ff ff ?? c6 85 ?? ?? ff ff ?? c6 85 ?? ?? ff ff ?? c6 85 ?? ?? ff ff ?? c6 85 ?? ?? ff ff ?? c6 85 ?? ?? ff ff ?? 53 c6 85 ?? ?? ff ff ?? 33 db c6 85 ?? ?? ff ff ?? 8b d3 56 c6 85 ?? ?? ff ff ?? 8a 85 ?? ?? ff ff 57 88 9d ?? ?? ff ff 8a 84 15 ?? ?? ff ff 0f be 8d ?? ?? ff ff 0f be c0 33 c1 88 84 15 ?? ?? ff ff 42 83 fa 0c 72 } //5
		$a_01_1 = {4d 61 69 6c 43 6c 69 65 6e 74 2e 64 6c 6c } //1 MailClient.dll
		$a_01_2 = {4d 6f 76 65 4c 65 66 74 } //1 MoveLeft
		$a_01_3 = {52 65 6c 65 61 73 65 } //1 Release
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=8
 
}