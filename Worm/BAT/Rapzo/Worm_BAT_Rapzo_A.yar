
rule Worm_BAT_Rapzo_A{
	meta:
		description = "Worm:BAT/Rapzo.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 75 63 6b 5f 55 61 63 } //01 00  Fuck_Uac
		$a_01_1 = {4b 42 44 4c 4c 48 4f 4f 4b 53 54 52 55 43 54 } //01 00  KBDLLHOOKSTRUCT
		$a_00_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 49 00 6e 00 74 00 65 00 6c 00 6c 00 69 00 46 00 6f 00 72 00 6d 00 73 00 } //01 00  Software\Microsoft\Internet Explorer\IntelliForms
		$a_00_3 = {5b 00 44 00 45 00 4c 00 5d 00 } //01 00  [DEL]
		$a_00_4 = {73 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 77 00 69 00 6e 00 33 00 32 00 5f 00 73 00 68 00 61 00 72 00 65 00 } //00 00  select * from win32_share
	condition:
		any of ($a_*)
 
}