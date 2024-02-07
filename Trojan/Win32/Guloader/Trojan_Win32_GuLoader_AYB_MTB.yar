
rule Trojan_Win32_GuLoader_AYB_MTB{
	meta:
		description = "Trojan:Win32/GuLoader.AYB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4b 00 6e 00 67 00 74 00 65 00 73 00 5c 00 56 00 72 00 65 00 6c 00 73 00 65 00 73 00 61 00 6e 00 76 00 69 00 73 00 6e 00 69 00 6e 00 67 00 65 00 72 00 6e 00 65 00 } //01 00  Software\Kngtes\Vrelsesanvisningerne
		$a_01_1 = {4d 00 69 00 6e 00 75 00 65 00 6e 00 64 00 65 00 6e 00 31 00 34 00 39 00 5c 00 41 00 6e 00 74 00 69 00 73 00 79 00 70 00 68 00 6f 00 6e 00 73 00 5c 00 53 00 61 00 74 00 69 00 72 00 69 00 6b 00 65 00 72 00 } //01 00  Minuenden149\Antisyphons\Satiriker
		$a_01_2 = {48 00 76 00 69 00 64 00 6d 00 61 00 6c 00 65 00 2e 00 69 00 6e 00 69 00 } //01 00  Hvidmale.ini
		$a_01_3 = {53 00 6a 00 6c 00 65 00 68 00 61 00 6c 00 6c 00 65 00 6e 00 2e 00 6c 00 6e 00 6b 00 } //01 00  Sjlehallen.lnk
		$a_01_4 = {25 00 57 00 49 00 4e 00 44 00 49 00 52 00 25 00 5c 00 53 00 74 00 72 00 62 00 65 00 74 00 5c 00 52 00 61 00 76 00 6e 00 65 00 6d 00 6f 00 64 00 65 00 72 00 65 00 6e 00 73 00 5c 00 42 00 72 00 79 00 6c 00 6c 00 75 00 70 00 73 00 6e 00 61 00 74 00 74 00 65 00 6e 00 } //00 00  %WINDIR%\Strbet\Ravnemoderens\Bryllupsnatten
	condition:
		any of ($a_*)
 
}