
rule Ransom_Win64_MagniberPacker_SH_MTB{
	meta:
		description = "Ransom:Win64/MagniberPacker.SH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {b1 c9 98 3c 7c 2b 6e ?? 3b 39 24 ?? a3 ?? ?? ?? ?? ?? ?? ?? ?? ae 8e 96 ?? ?? ?? ?? 31 ac 97 ?? ?? ?? ?? 73 ?? a9 ?? ?? ?? ?? eb } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}