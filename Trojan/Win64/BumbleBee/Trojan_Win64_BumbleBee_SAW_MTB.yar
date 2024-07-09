
rule Trojan_Win64_BumbleBee_SAW_MTB{
	meta:
		description = "Trojan:Win64/BumbleBee.SAW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {03 c8 31 4b ?? 8b 4b ?? 8b 43 ?? 83 e9 ?? 0f af c1 41 ?? ?? c1 ea ?? 89 43 } //1
		$a_03_1 = {ff c1 0f af c1 8b 8b ?? ?? ?? ?? 81 c1 ?? ?? ?? ?? 89 43 ?? 8b 83 ?? ?? ?? ?? 0f af c1 89 83 ?? ?? ?? ?? 49 ?? ?? ?? ?? ?? ?? 0f 8c } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}