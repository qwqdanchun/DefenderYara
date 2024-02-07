
rule TrojanSpy_Win32_Yewlo_A{
	meta:
		description = "TrojanSpy:Win32/Yewlo.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_09_0 = {54 6f 3a 20 61 72 73 65 6e 61 72 73 65 6e 64 64 64 40 6d 61 69 6c 2e 72 75 } //01 00  To: arsenarsenddd@mail.ru
		$a_09_1 = {42 6c 61 63 6b 20 45 6e 67 69 6e 65 20 30 78 } //01 00  Black Engine 0x
		$a_09_2 = {5b 43 55 52 52 45 4e 54 20 57 49 4e 44 4f 57 20 54 45 58 54 3a 25 73 5d } //01 00  [CURRENT WINDOW TEXT:%s]
		$a_09_3 = {2f 4c 49 56 45 20 49 4e 20 4d 59 20 48 45 41 52 54 20 4d 4f 54 48 45 52 2e } //01 00  /LIVE IN MY HEART MOTHER.
		$a_01_4 = {43 00 3a 00 5c 00 54 00 45 00 4d 00 50 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}