
rule Backdoor_Win32_Zegost_CF{
	meta:
		description = "Backdoor:Win32/Zegost.CF,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {43 47 68 30 73 74 44 6f 63 00 00 00 43 47 68 30 73 74 56 69 65 77 00 00 90 02 ff 51 51 57 72 79 2e 44 61 74 90 00 } //01 00 
		$a_01_1 = {47 68 30 73 74 20 52 41 54 20 45 78 63 65 70 74 69 6f 6e 00 43 52 41 53 48 20 43 4f 44 45 3a 30 78 25 2e 38 78 20 41 44 44 52 3d 30 78 25 2e 38 78 20 46 4c 41 47 53 3d 30 78 25 2e 38 78 20 50 41 52 41 4d 53 3d 30 78 25 2e 38 78 } //00 00  桇猰⁴䅒⁔硅散瑰潩n剃十⁈佃䕄〺╸㠮⁸䑁剄〽╸㠮⁸䱆䝁㵓砰⸥砸倠剁䵁㵓砰⸥砸
	condition:
		any of ($a_*)
 
}