
rule Trojan_Win32_Malgent_D{
	meta:
		description = "Trojan:Win32/Malgent.D,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {ff d6 8b 45 f4 8a 0c 07 90 90 90 50 90 58 90 90 90 90 90 90 90 90 90 50 90 58 90 90 90 90 90 90 ff 05 28 50 00 10 2a cb 80 f1 3f 6a 00 02 cb 90 90 90 50 90 58 90 90 90 90 90 90 90 90 90 50 90 58 90 90 90 90 90 90 6a 00 88 0f ff d6 90 90 90 50 90 58 90 90 90 90 90 90 90 90 90 50 90 58 90 90 90 90 90 90 47 ff 4d fc 75 91 } //01 00 
		$a_01_1 = {54 6d 44 62 67 4c 6f 67 2e 64 6c 6c } //01 00  TmDbgLog.dll
		$a_00_2 = {74 71 5f 74 65 6c 22 23 27 71 69 69 } //00 00  tq_tel"#'qii
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Malgent_D_2{
	meta:
		description = "Trojan:Win32/Malgent.D,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 43 6f 64 65 73 5c 56 65 72 73 69 6f 6e 32 5c 70 65 5f 65 6e 63 72 79 70 74 5c 52 65 6c 65 61 73 65 5c 50 45 43 6c 6f 6e 65 72 2e 70 64 62 00 } //01 00 
		$a_01_1 = {43 00 6f 00 6d 00 70 00 61 00 6e 00 79 00 4e 00 61 00 6d 00 65 00 00 00 00 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 43 00 6f 00 72 00 70 00 6f 00 72 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00 
		$a_01_2 = {47 00 6f 00 6c 00 64 00 54 00 65 00 6d 00 70 00 2e 00 65 00 78 00 65 00 } //00 00  GoldTemp.exe
	condition:
		any of ($a_*)
 
}