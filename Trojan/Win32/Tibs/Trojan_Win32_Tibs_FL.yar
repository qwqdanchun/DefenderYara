
rule Trojan_Win32_Tibs_FL{
	meta:
		description = "Trojan:Win32/Tibs.FL,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {87 d1 81 c4 ?? ?? ?? ?? 81 ec ?? ?? ?? ?? 6a ?? ff 15 ?? ?? ?? ?? (69 c0 00 ?? ?? 00 ba|00 ?? ?? 00 f7 e2 )} //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}