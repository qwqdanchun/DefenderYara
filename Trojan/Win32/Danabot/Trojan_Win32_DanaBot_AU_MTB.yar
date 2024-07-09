
rule Trojan_Win32_DanaBot_AU_MTB{
	meta:
		description = "Trojan:Win32/DanaBot.AU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {66 0f 57 c0 66 0f 13 05 [0-15] 8b 55 ?? 03 55 ?? 89 55 ?? 8b 45 ?? 33 45 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}