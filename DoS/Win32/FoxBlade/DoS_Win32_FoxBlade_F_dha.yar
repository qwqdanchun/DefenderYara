
rule DoS_Win32_FoxBlade_F_dha{
	meta:
		description = "DoS:Win32/FoxBlade.F!dha,SIGNATURE_TYPE_PEHSTR_EXT,64 00 64 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b d7 8b ce e8 ?? ?? ?? ?? 46 83 fe 64 7e ec 8b d7 b9 ?? ?? ?? ?? e8 ?? ?? ?? ?? 57 68 ?? ?? ?? ?? ba ?? ?? ?? ?? c7 45 ?? 5c 00 5c 00 8d 4d c4 c7 45 ?? 3f 00 5c 00 } //100
	condition:
		((#a_03_0  & 1)*100) >=100
 
}