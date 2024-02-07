
rule TrojanSpy_Win32_Bancos_AIH{
	meta:
		description = "TrojanSpy:Win32/Bancos.AIH,SIGNATURE_TYPE_PEHSTR,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 00 62 00 6c 00 75 00 65 00 6d 00 61 00 6e 00 73 00 70 00 69 00 6c 00 6c 00 2e 00 63 00 6f 00 6d 00 2f 00 6d 00 65 00 64 00 69 00 61 00 2f 00 73 00 79 00 73 00 74 00 65 00 6d 00 2f 00 6a 00 73 00 2f 00 72 00 6f 00 62 00 6c 00 65 00 2f 00 } //01 00  /bluemanspill.com/media/system/js/roble/
		$a_01_1 = {0c 62 65 63 61 75 73 65 54 69 6d 65 72 12 00 } //01 00 
		$a_01_2 = {08 76 61 6c 75 65 00 00 00 0c 78 30 30 00 00 67 00 72 00 61 00 76 00 61 00 72 00 00 00 } //01 00 
		$a_01_3 = {06 74 63 68 75 61 6c 9c } //00 00 
	condition:
		any of ($a_*)
 
}