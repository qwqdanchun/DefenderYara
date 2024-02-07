
rule TrojanSpy_BAT_Omaneat_I_bit{
	meta:
		description = "TrojanSpy:BAT/Omaneat.I!bit,SIGNATURE_TYPE_PEHSTR_EXT,20 00 20 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {3a 00 5a 00 6f 00 6e 00 65 00 2e 00 49 00 64 00 65 00 6e 00 74 00 69 00 66 00 69 00 65 00 72 00 } //0a 00  :Zone.Identifier
		$a_01_1 = {25 00 49 00 54 00 53 00 45 00 4c 00 46 00 49 00 4e 00 4a 00 45 00 43 00 54 00 49 00 4f 00 4e 00 25 00 } //0a 00  %ITSELFINJECTION%
		$a_03_2 = {4e 00 74 00 53 00 65 00 74 00 43 00 6f 00 6e 00 74 00 65 00 78 00 74 00 54 00 68 00 72 00 65 00 61 00 64 00 90 02 02 4e 00 74 00 55 00 6e 00 6d 00 61 00 70 00 56 00 69 00 65 00 77 00 4f 00 66 00 53 00 65 00 63 00 74 00 69 00 6f 00 6e 00 90 00 } //01 00 
		$a_01_3 = {73 00 6e 00 78 00 68 00 6b 00 2e 00 64 00 6c 00 6c 00 } //01 00  snxhk.dll
		$a_01_4 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 } //00 00  HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\
		$a_00_5 = {5d 04 00 00 ea 96 03 80 5c 35 00 00 eb 96 03 80 00 00 01 00 04 00 } //1f 00 
	condition:
		any of ($a_*)
 
}