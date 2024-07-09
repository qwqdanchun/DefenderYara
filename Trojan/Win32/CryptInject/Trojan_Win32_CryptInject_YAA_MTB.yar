
rule Trojan_Win32_CryptInject_YAA_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.YAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {53 33 db 66 ?? ?? ?? ?? ?? ?? 6c 00 c6 ?? ?? ?? ?? 00 6b c7 05 ?? ?? ?? ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 66 c7 05 ?? ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? c6 05 ?? ?? ?? ?? ?? c6 05 ?? ?? ?? ?? ?? c6 05 ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 66 c7 05 ?? ?? ?? ?? ?? ?? 88 ?? ?? ?? ?? ?? 56 3d } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}