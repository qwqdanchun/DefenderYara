
rule Trojan_Win32_Pikabot_ZU_MTB{
	meta:
		description = "Trojan:Win32/Pikabot.ZU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {03 c3 89 45 f0 eb 3d } //01 00 
		$a_03_1 = {8b 45 f0 33 d2 eb 00 b9 90 01 04 83 c1 25 eb db 69 45 f0 90 01 04 bb 39 30 00 00 eb c6 b9 db 7f 00 00 83 c1 25 eb ca 8b 45 f0 33 d2 eb ef 48 89 45 ec e9 58 ff ff ff e9 90 00 } //01 00 
		$a_01_2 = {45 78 63 70 74 } //00 00  Excpt
	condition:
		any of ($a_*)
 
}