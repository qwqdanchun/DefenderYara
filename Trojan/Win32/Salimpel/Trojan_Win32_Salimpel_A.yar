
rule Trojan_Win32_Salimpel_A{
	meta:
		description = "Trojan:Win32/Salimpel.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //01 00  Policies\System\DisableRegistryTools
		$a_01_1 = {49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 5a 00 6f 00 6e 00 65 00 73 00 5c 00 33 00 5c 00 31 00 38 00 30 00 33 00 } //01 00  Internet Settings\Zones\3\1803
		$a_01_2 = {48 00 4b 00 43 00 55 00 5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 20 00 50 00 61 00 6e 00 65 00 6c 00 5c 00 4d 00 6f 00 75 00 73 00 65 00 5c 00 53 00 77 00 61 00 70 00 4d 00 6f 00 75 00 73 00 65 00 42 00 75 00 74 00 74 00 6f 00 6e 00 73 00 } //01 00  HKCU\Control Panel\Mouse\SwapMouseButtons
		$a_01_3 = {2d 00 3a 00 47 00 65 00 6e 00 65 00 72 00 61 00 74 00 69 00 6f 00 6e 00 3a 00 2d 00 } //00 00  -:Generation:-
	condition:
		any of ($a_*)
 
}