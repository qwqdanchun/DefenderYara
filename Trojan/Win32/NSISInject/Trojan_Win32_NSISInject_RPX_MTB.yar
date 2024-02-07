
rule Trojan_Win32_NSISInject_RPX_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {89 c3 31 ed 55 50 ff d6 89 c6 6a 40 68 00 30 00 00 50 55 ff 15 90 01 04 89 c7 89 e0 55 50 56 57 53 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_NSISInject_RPX_MTB_2{
	meta:
		description = "Trojan:Win32/NSISInject.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 61 72 62 61 74 65 2e 52 65 61 } //01 00  Parbate.Rea
		$a_01_1 = {46 69 65 72 63 65 6e 69 6e 67 5c 56 69 72 74 75 73 } //01 00  Fiercening\Virtus
		$a_01_2 = {41 6e 67 72 65 62 73 6d 65 74 6f 64 65 72 31 36 35 2e 4c 6b 6b } //01 00  Angrebsmetoder165.Lkk
		$a_01_3 = {55 6e 69 6e 73 74 61 6c 6c 5c 4c 69 74 69 6f 70 61 } //01 00  Uninstall\Litiopa
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 52 6f 6f 79 65 62 6f 6b } //00 00  Software\Rooyebok
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_NSISInject_RPX_MTB_3{
	meta:
		description = "Trojan:Win32/NSISInject.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 54 00 69 00 6c 00 62 00 6c 00 69 00 76 00 65 00 6c 00 73 00 65 00 73 00 68 00 69 00 73 00 74 00 6f 00 72 00 69 00 65 00 72 00 73 00 31 00 32 00 36 00 5c 00 53 00 74 00 72 00 65 00 61 00 6b 00 65 00 72 00 } //01 00  Software\Tilblivelseshistoriers126\Streaker
		$a_01_1 = {46 00 6f 00 6e 00 6f 00 62 00 73 00 6e 00 69 00 6e 00 67 00 65 00 72 00 } //01 00  Fonobsninger
		$a_01_2 = {53 00 6b 00 6c 00 6d 00 65 00 6e 00 39 00 31 00 5c 00 55 00 64 00 6b 00 6f 00 6d 00 6d 00 65 00 6e 00 74 00 65 00 72 00 5c 00 4c 00 75 00 78 00 75 00 72 00 69 00 6f 00 75 00 73 00 } //01 00  Sklmen91\Udkommenter\Luxurious
		$a_01_3 = {4b 00 6c 00 65 00 70 00 74 00 6f 00 6d 00 61 00 6e 00 65 00 72 00 6e 00 65 00 73 00 5c 00 41 00 61 00 72 00 65 00 6e 00 64 00 65 00 31 00 36 00 34 00 } //00 00  Kleptomanernes\Aarende164
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_NSISInject_RPX_MTB_4{
	meta:
		description = "Trojan:Win32/NSISInject.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 00 72 00 69 00 6d 00 6e 00 65 00 73 00 73 00 65 00 73 00 5c 00 53 00 6f 00 66 00 61 00 62 00 6f 00 72 00 64 00 65 00 74 00 73 00 5c 00 41 00 64 00 72 00 65 00 61 00 6d 00 65 00 64 00 } //01 00  Primnesses\Sofabordets\Adreamed
		$a_01_1 = {53 00 63 00 6f 00 72 00 65 00 72 00 2e 00 69 00 6e 00 69 00 } //01 00  Scorer.ini
		$a_01_2 = {55 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 5c 00 66 00 72 00 61 00 73 00 65 00 73 00 5c 00 44 00 72 00 69 00 62 00 62 00 65 00 74 00 5c 00 44 00 61 00 72 00 6b 00 74 00 6f 00 77 00 6e 00 } //01 00  Uninstall\frases\Dribbet\Darktown
		$a_01_3 = {41 00 66 00 73 00 6b 00 79 00 64 00 6e 00 69 00 6e 00 67 00 65 00 72 00 6e 00 65 00 34 00 34 00 } //01 00  Afskydningerne44
		$a_01_4 = {4e 00 6f 00 6e 00 72 00 65 00 70 00 72 00 65 00 68 00 65 00 6e 00 73 00 69 00 62 00 6c 00 79 00 2e 00 42 00 65 00 72 00 } //00 00  Nonreprehensibly.Ber
	condition:
		any of ($a_*)
 
}