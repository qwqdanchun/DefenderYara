
rule Trojan_Win32_Adialer_OR{
	meta:
		description = "Trojan:Win32/Adialer.OR,SIGNATURE_TYPE_PEHSTR,22 00 22 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {53 74 61 72 74 20 50 61 67 65 00 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 4d 61 69 6e 00 00 00 58 58 58 43 6c 61 73 73 00 00 00 00 4e 6f 74 20 63 6f 6e 6e 65 63 74 65 64 00 00 00 26 43 6f 6e } //0a 00 
		$a_01_1 = {77 77 77 2e 61 72 65 61 78 78 78 2e 62 69 7a } //0a 00  www.areaxxx.biz
		$a_01_2 = {50 45 52 20 45 4e 54 52 41 52 45 20 4e 45 4c 4c 27 41 52 45 41 20 41 44 55 4c 54 49 20 43 4c 49 43 43 41 20 73 75 20 22 4f 4b 22 20 65 20 70 6f 69 20 73 75 } //01 00  PER ENTRARE NELL'AREA ADULTI CLICCA su "OK" e poi su
		$a_01_3 = {4c 41 4e 00 58 58 58 00 33 36 36 30 32 32 32 00 45 52 52 4f 52 5f 42 55 46 46 45 52 5f 49 4e 56 41 4c 49 44 00 00 00 00 45 52 52 4f 52 5f 43 41 4e 4e 4f 54 5f 4f 50 45 4e 5f 50 48 4f 4e 45 42 4f 4f 4b } //01 00 
		$a_01_4 = {52 61 73 44 69 61 6c 41 } //01 00  RasDialA
		$a_01_5 = {52 61 73 45 6e 75 6d 45 6e 74 72 69 65 73 41 } //01 00  RasEnumEntriesA
		$a_01_6 = {50 72 6f 63 65 73 73 69 6e 67 20 6d 6f 64 65 6d 20 63 61 6c 6c 62 61 63 6b } //00 00  Processing modem callback
	condition:
		any of ($a_*)
 
}