
rule Trojan_Win32_Delfinject_RMA_MTB{
	meta:
		description = "Trojan:Win32/Delfinject.RMA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {05 ee 0b 00 00 8d 04 08 50 58 6a 04 68 00 10 00 00 a1 ?? ?? ?? ?? 50 8b 06 8d 04 80 8b 15 ?? ?? ?? ?? 8b 44 c2 ?? 03 05 ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? a3 ?? ?? ?? ?? 8d 8b ?? ?? ?? ?? 05 ee 0b 00 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}