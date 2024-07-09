
rule Trojan_Win32_Ranumbot_GO_MTB{
	meta:
		description = "Trojan:Win32/Ranumbot.GO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_02_0 = {c1 e9 05 c7 05 ?? ?? ?? ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ff ff ff ff 89 4d ?? 8b 85 ?? ?? ?? ?? 01 45 ?? 81 3d ?? ?? ?? ?? ?? ?? ?? ?? 90 18 8b 55 ?? 8b 4d ?? 33 d6 33 ca 8d 85 ?? ?? ?? ?? e8 ?? ?? ?? ?? 81 ?? ?? ?? ?? ?? 83 } //10
		$a_02_1 = {c1 e8 05 c7 05 ?? ?? ?? ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ff ff ff ff 89 4d ?? 8b 85 ?? ?? ?? ?? 01 45 ?? 81 3d ?? ?? ?? ?? ?? ?? ?? ?? 90 18 8b 55 ?? 8b 4d ?? 33 d6 33 ca 8d 85 ?? ?? ?? ?? e8 ?? ?? ?? ?? 81 ?? ?? ?? ?? ?? 83 } //10
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10) >=10
 
}