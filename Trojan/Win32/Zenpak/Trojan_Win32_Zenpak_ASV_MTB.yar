
rule Trojan_Win32_Zenpak_ASV_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.ASV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {6e 00 63 00 72 00 65 00 65 00 70 00 69 00 6e 00 67 00 61 00 69 00 72 00 4a 00 54 00 68 00 65 00 72 00 65 00 66 00 69 00 72 00 6d 00 61 00 6d 00 65 00 6e 00 74 00 61 00 62 00 6f 00 76 00 65 00 6d 00 61 00 64 00 65 00 31 00 } //01 00  ncreepingairJTherefirmamentabovemade1
		$a_01_1 = {6c 00 61 00 6e 00 64 00 69 00 74 00 73 00 65 00 6c 00 66 00 51 00 64 00 61 00 79 00 65 00 74 00 68 00 65 00 6d 00 59 00 6d 00 61 00 6b 00 65 00 46 00 61 00 63 00 65 00 66 00 6f 00 77 00 6c 00 } //01 00  landitselfQdayethemYmakeFacefowl
		$a_01_2 = {53 32 61 66 74 65 72 67 72 65 65 6e 2e 75 49 73 6e 2e 74 } //01 00  S2aftergreen.uIsn.t
		$a_01_3 = {6d 61 6e 2e 50 47 74 68 65 72 65 6a 68 61 74 68 53 65 61 73 66 66 69 72 6d 61 6d 65 6e 74 2e 72 75 6c 65 } //01 00  man.PGtherejhathSeasffirmament.rule
		$a_01_4 = {64 67 72 65 61 74 6d 61 64 65 59 69 65 6c 64 69 6e 67 76 49 44 61 79 67 72 61 73 73 35 30 } //01 00  dgreatmadeYieldingvIDaygrass50
		$a_01_5 = {52 00 49 00 73 00 65 00 74 00 6d 00 6f 00 72 00 6e 00 69 00 6e 00 67 00 51 00 43 00 72 00 65 00 65 00 70 00 65 00 74 00 68 00 77 00 6a 00 65 00 6d 00 65 00 61 00 74 00 } //01 00  RIsetmorningQCreepethwjemeat
		$a_01_6 = {65 00 76 00 65 00 6e 00 69 00 6e 00 67 00 62 00 6c 00 65 00 73 00 73 00 65 00 64 00 74 00 6f 00 47 00 61 00 6e 00 64 00 62 00 65 00 2e 00 73 00 69 00 78 00 74 00 68 00 } //01 00  eveningblessedtoGandbe.sixth
		$a_01_7 = {66 69 73 68 73 61 79 69 6e 67 67 61 74 68 65 72 65 64 46 69 6c 6c 73 61 77 2e 79 } //01 00  fishsayinggatheredFillsaw.y
		$a_01_8 = {79 65 61 72 73 63 61 6e 2e 74 6c 65 73 73 65 72 33 4f 67 79 69 65 6c 64 69 6e 67 4b 47 6a } //01 00  yearscan.tlesser3OgyieldingKGj
		$a_01_9 = {73 68 65 2e 64 73 65 61 68 46 74 68 65 79 2e 72 65 53 65 61 73 } //00 00  she.dseahFthey.reSeas
	condition:
		any of ($a_*)
 
}