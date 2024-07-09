
rule Trojan_Win32_SpyStealer_XZ_MTB{
	meta:
		description = "Trojan:Win32/SpyStealer.XZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b 75 0c 3b 5d ?? ?? ?? 8d 8d ?? ?? ?? ?? e8 ?? ?? ?? ?? 8d 8d ?? ?? ?? ?? e8 ?? ?? ?? ?? 89 d8 31 d2 f7 75 ?? 8b 45 ?? 0f be 04 10 69 c0 ?? ?? ?? ?? 30 04 1e 43 eb } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}