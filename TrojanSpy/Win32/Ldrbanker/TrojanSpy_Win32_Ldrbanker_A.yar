
rule TrojanSpy_Win32_Ldrbanker_A{
	meta:
		description = "TrojanSpy:Win32/Ldrbanker.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 63 00 6c 00 69 00 65 00 6e 00 74 00 70 00 63 00 5c 00 63 00 6c 00 69 00 65 00 6e 00 74 00 65 00 2e 00 } //01 00  C:\clientpc\cliente.
		$a_01_1 = {43 00 3a 00 5c 00 63 00 6c 00 69 00 65 00 6e 00 74 00 70 00 63 00 5c 00 6f 00 74 00 6c 00 6f 00 6f 00 6b 00 2e 00 } //01 00  C:\clientpc\otlook.
		$a_01_2 = {43 00 3a 00 5c 00 63 00 6c 00 69 00 65 00 6e 00 74 00 70 00 63 00 5c 00 6c 00 69 00 62 00 6d 00 79 00 53 00 51 00 4c 00 35 00 30 00 2e 00 } //05 00  C:\clientpc\libmySQL50.
		$a_01_3 = {2f 00 63 00 6c 00 69 00 65 00 6e 00 74 00 65 00 2e 00 6a 00 70 00 67 00 } //05 00  /cliente.jpg
		$a_01_4 = {2f 00 6c 00 69 00 62 00 6d 00 79 00 53 00 51 00 4c 00 35 00 30 00 2e 00 6a 00 70 00 67 00 } //05 00  /libmySQL50.jpg
		$a_01_5 = {2f 00 6f 00 74 00 6c 00 6f 00 6f 00 6b 00 2e 00 6a 00 70 00 67 00 } //00 00  /otlook.jpg
	condition:
		any of ($a_*)
 
}