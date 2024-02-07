
rule Backdoor_Win32_Adialer_C{
	meta:
		description = "Backdoor:Win32/Adialer.C,SIGNATURE_TYPE_PEHSTR_EXT,ffffffe6 00 ffffffdc 00 08 00 00 64 00 "
		
	strings :
		$a_02_0 = {46 83 fe 03 7e 12 8a 15 90 01 04 be 01 00 00 00 02 d1 88 14 28 eb 90 00 } //64 00 
		$a_00_1 = {80 3c 28 5c 75 16 80 7c 28 01 0d 75 0f 80 7c 28 02 0a 75 08 83 c0 02 e9 } //05 00 
		$a_00_2 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e } //05 00  InternetOpen
		$a_00_3 = {49 6e 74 65 72 6e 65 74 52 65 61 64 } //05 00  InternetRead
		$a_00_4 = {4d 6f 6e 74 6f 72 67 75 65 69 6c } //05 00  Montorgueil
		$a_00_5 = {52 61 73 47 65 74 43 6f 6e 6e 65 63 74 53 74 61 74 75 73 41 } //05 00  RasGetConnectStatusA
		$a_00_6 = {52 61 73 45 6e 75 6d 43 6f 6e 6e 65 63 74 69 6f 6e 73 41 } //05 00  RasEnumConnectionsA
		$a_00_7 = {52 61 73 48 61 6e 67 55 70 41 } //00 00  RasHangUpA
	condition:
		any of ($a_*)
 
}