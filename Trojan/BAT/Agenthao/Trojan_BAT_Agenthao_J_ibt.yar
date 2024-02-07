
rule Trojan_BAT_Agenthao_J_ibt{
	meta:
		description = "Trojan:BAT/Agenthao.J!ibt,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {77 00 77 00 77 00 2e 00 74 00 6f 00 68 00 61 00 6f 00 31 00 32 00 33 00 2e 00 63 00 6f 00 6d 00 } //01 00  www.tohao123.com
		$a_00_1 = {2e 00 65 00 78 00 65 00 20 00 2f 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 } //01 00  .exe /autorun
		$a_00_2 = {77 00 69 00 6e 00 33 00 32 00 5f 00 6c 00 6f 00 67 00 69 00 63 00 61 00 6c 00 64 00 69 00 73 00 6b 00 2e 00 64 00 65 00 76 00 69 00 63 00 65 00 69 00 64 00 3d 00 22 00 43 00 3a 00 22 00 } //01 00  win32_logicaldisk.deviceid="C:"
		$a_02_3 = {02 28 06 00 00 06 6f 52 00 00 0a 28 53 00 00 0a 72 90 01 01 00 00 70 11 05 72 90 01 01 00 00 70 28 4d 00 00 0a 6f 54 00 00 0a 7d 0c 00 00 04 de 0d 90 00 } //01 00 
		$a_00_4 = {74 69 6d 65 72 46 69 72 65 66 6f 78 5f 54 69 63 6b } //00 00  timerFirefox_Tick
	condition:
		any of ($a_*)
 
}