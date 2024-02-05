
rule Ransom_Win32_Trickbot_GO_MSR{
	meta:
		description = "Ransom:Win32/Trickbot.GO!MSR,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {65 36 5a 67 67 61 42 43 36 70 49 79 79 4e 64 41 36 79 34 44 6b 49 75 7a 49 78 45 58 7a 72 63 54 52 } //01 00 
		$a_01_1 = {59 6f 75 72 20 41 50 44 55 20 69 73 20 65 72 72 6f 72 21 } //01 00 
		$a_01_2 = {50 43 2f 53 43 20 52 65 61 64 65 72 2f 43 61 72 64 20 6f 70 65 72 61 74 69 6f 6e 3a 20 4f 70 65 6e 2f 43 6c 6f 73 65 2f 52 65 73 65 74 2f 54 72 61 6e 73 6d 69 74 2e } //00 00 
	condition:
		any of ($a_*)
 
}