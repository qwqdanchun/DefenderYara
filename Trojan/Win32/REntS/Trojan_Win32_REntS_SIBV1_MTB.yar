
rule Trojan_Win32_REntS_SIBV1_MTB{
	meta:
		description = "Trojan:Win32/REntS.SIBV1!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_00_0 = {67 6e 77 70 66 7a 73 65 2e 70 64 62 } //1 gnwpfzse.pdb
		$a_03_1 = {6a 40 68 00 ?? 00 00 8b d8 53 6a 00 ff 15 ?? ?? ?? ?? 6a 00 8b f8 8d 45 ?? 50 53 57 56 ff 15 ?? ?? ?? ?? 33 c9 85 db 74 ?? 8a 04 39 [0-20] 34 ?? [0-20] 34 ?? [0-20] 88 04 39 41 3b cb 72 ?? 6a 00 6a 00 57 ff 15 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}