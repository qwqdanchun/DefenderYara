
rule Trojan_Win32_CryptInject_RBB_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.RBB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {56 69 72 74 66 ?? ?? ?? ?? ?? ?? 75 61 c6 05 ?? ?? ?? ?? 6c ff 15 90 09 0d 00 c6 05 ?? ?? ?? ?? 6f } //1
		$a_02_1 = {7c 00 6c ff 15 90 09 35 00 c6 05 ?? ?? ?? ?? 6f c6 05 ?? ?? ?? ?? 56 c6 05 ?? ?? ?? ?? 69 c6 05 ?? ?? ?? ?? 72 c6 05 ?? ?? ?? ?? 74 c6 05 ?? ?? ?? ?? 75 c6 05 ?? ?? ?? ?? 61 c6 05 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=1
 
}