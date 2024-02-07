
rule Trojan_Win32_Vundo_AT{
	meta:
		description = "Trojan:Win32/Vundo.AT,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {64 a1 30 00 00 00 90 02 08 89 45 fc 90 02 20 8b 45 fc 90 02 08 8b 40 0c 90 02 40 8b 09 90 02 04 39 41 18 90 02 04 0f 85 f1 ff ff ff 90 02 20 89 51 1c 90 02 20 c9 eb 90 00 } //01 00 
		$a_03_1 = {81 fe 00 7d 00 00 90 02 04 0f 82 90 01 01 00 00 00 90 02 08 81 fe 00 05 00 00 90 02 48 0f 82 90 01 01 00 00 00 40 90 02 04 81 fe 80 00 00 00 90 02 04 0f 83 90 01 01 00 00 00 40 90 02 02 40 90 00 } //01 00 
		$a_08_2 = {6e 74 64 6c 6c 2e 64 6c 6c } //00 00  ntdll.dll
	condition:
		any of ($a_*)
 
}