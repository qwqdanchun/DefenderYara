
rule Backdoor_Win32_Lotok_GMX_MTB{
	meta:
		description = "Backdoor:Win32/Lotok.GMX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 0a 00 "
		
	strings :
		$a_01_0 = {89 c7 89 fa 61 8a 4c 07 01 32 0c 07 89 c2 d1 ea 83 c0 02 88 0c 17 3d } //0a 00 
		$a_03_1 = {8a 4c 07 01 32 0c 07 89 c2 d1 ea 57 bf 90 01 04 4f 5f 83 c0 02 88 0c 17 3d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}