
rule Trojan_Win64_Shellcode_AMMH_MTB{
	meta:
		description = "Trojan:Win64/Shellcode.AMMH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 01 d0 44 0f b6 00 8b 85 ?? ?? ?? ?? 48 98 0f b6 4c 05 ?? 8b 85 ?? ?? ?? ?? [0-0b] 48 01 d0 44 89 c2 31 ca 88 10 83 85 ?? ?? ?? ?? 01 83 85 ?? ?? ?? ?? 01 8b 85 ?? ?? ?? ?? 48 98 48 3d } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}