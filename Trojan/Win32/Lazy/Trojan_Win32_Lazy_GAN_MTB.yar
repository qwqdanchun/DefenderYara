
rule Trojan_Win32_Lazy_GAN_MTB{
	meta:
		description = "Trojan:Win32/Lazy.GAN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {31 c2 01 35 ?? ?? ?? ?? 83 c0 ?? 8d 05 ?? ?? ?? ?? 89 38 01 c2 83 f0 ?? 01 2d ?? ?? ?? ?? b8 ?? ?? ?? ?? 01 1d ?? ?? ?? ?? b9 02 00 00 00 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}