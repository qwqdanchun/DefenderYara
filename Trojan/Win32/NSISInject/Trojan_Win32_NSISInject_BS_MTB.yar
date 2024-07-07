
rule Trojan_Win32_NSISInject_BS_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.BS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {4d 00 69 00 73 00 73 00 69 00 6f 00 6e 00 65 00 72 00 65 00 64 00 65 00 73 00 5c 00 6c 00 6f 00 67 00 69 00 73 00 74 00 69 00 6b 00 66 00 75 00 6e 00 6b 00 74 00 69 00 6f 00 6e 00 65 00 72 00 5c 00 54 00 61 00 6c 00 65 00 72 00 61 00 66 00 68 00 6e 00 67 00 69 00 6e 00 67 00 2e 00 41 00 63 00 63 00 } //1 Missioneredes\logistikfunktioner\Talerafhnging.Acc
		$a_01_1 = {46 00 6f 00 72 00 73 00 76 00 65 00 6e 00 73 00 6b 00 5c 00 6c 00 69 00 6d 00 66 00 61 00 62 00 72 00 69 00 6b 00 6b 00 65 00 72 00 73 00 5c 00 52 00 65 00 74 00 69 00 6e 00 61 00 5c 00 50 00 75 00 6c 00 6c 00 69 00 6d 00 75 00 74 00 73 00 2e 00 42 00 6f 00 6c 00 } //1 Forsvensk\limfabrikkers\Retina\Pullimuts.Bol
		$a_01_2 = {43 00 79 00 73 00 74 00 69 00 63 00 65 00 72 00 63 00 75 00 73 00 5c 00 4d 00 75 00 74 00 61 00 32 00 31 00 30 00 5c 00 52 00 6f 00 6d 00 61 00 6e 00 62 00 6c 00 61 00 64 00 65 00 6e 00 65 00 73 00 5c 00 45 00 70 00 69 00 70 00 6c 00 65 00 78 00 69 00 73 00 2e 00 6c 00 6e 00 6b 00 } //1 Cysticercus\Muta210\Romanbladenes\Epiplexis.lnk
		$a_01_3 = {43 00 68 00 61 00 6c 00 61 00 6e 00 61 00 32 00 33 00 38 00 5c 00 50 00 72 00 65 00 64 00 69 00 73 00 72 00 65 00 67 00 61 00 72 00 64 00 5c 00 6f 00 6d 00 64 00 62 00 6e 00 69 00 6e 00 67 00 65 00 72 00 6e 00 65 00 5c 00 53 00 6b 00 62 00 6e 00 65 00 67 00 75 00 64 00 69 00 6e 00 64 00 65 00 2e 00 45 00 66 00 74 00 } //1 Chalana238\Predisregard\omdbningerne\Skbnegudinde.Eft
		$a_01_4 = {54 00 69 00 73 00 73 00 65 00 6d 00 61 00 6e 00 64 00 65 00 6e 00 73 00 5c 00 50 00 61 00 63 00 69 00 66 00 69 00 73 00 74 00 69 00 73 00 6b 00 5c 00 53 00 6b 00 61 00 61 00 6e 00 65 00 73 00 5c 00 48 00 65 00 6b 00 73 00 65 00 6a 00 61 00 67 00 74 00 65 00 6e 00 73 00 2e 00 73 00 70 00 72 00 } //1 Tissemandens\Pacifistisk\Skaanes\Heksejagtens.spr
		$a_01_5 = {4c 00 65 00 72 00 74 00 6a 00 65 00 74 00 5c 00 4c 00 75 00 66 00 74 00 69 00 67 00 68 00 65 00 64 00 65 00 72 00 6e 00 65 00 73 00 5c 00 50 00 72 00 6f 00 73 00 61 00 69 00 73 00 74 00 65 00 72 00 6e 00 65 00 2e 00 69 00 6e 00 69 00 } //1 Lertjet\Luftighedernes\Prosaisterne.ini
		$a_01_6 = {53 00 6b 00 61 00 62 00 69 00 6c 00 6b 00 65 00 6e 00 68 00 6f 00 76 00 65 00 64 00 65 00 72 00 6e 00 65 00 5c 00 47 00 75 00 74 00 69 00 75 00 6d 00 5c 00 54 00 72 00 61 00 76 00 65 00 72 00 73 00 65 00 72 00 65 00 5c 00 4f 00 76 00 65 00 72 00 72 00 69 00 73 00 6c 00 65 00 73 00 2e 00 50 00 72 00 66 00 } //1 Skabilkenhovederne\Gutium\Traversere\Overrisles.Prf
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}