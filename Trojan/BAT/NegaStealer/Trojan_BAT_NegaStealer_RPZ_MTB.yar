
rule Trojan_BAT_NegaStealer_RPZ_MTB{
	meta:
		description = "Trojan:BAT/NegaStealer.RPZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {6b 00 6f 00 73 00 6d 00 69 00 6b 00 62 00 61 00 6e 00 64 00 2e 00 63 00 6f 00 6d 00 } //1 kosmikband.com
		$a_01_1 = {77 00 74 00 72 00 61 00 73 00 68 00 } //1 wtrash
		$a_01_2 = {52 00 63 00 65 00 67 00 6a 00 78 00 64 00 72 00 67 00 61 00 6b 00 2e 00 70 00 6e 00 67 00 } //1 Rcegjxdrgak.png
		$a_01_3 = {47 00 65 00 74 00 78 00 54 00 79 00 70 00 65 00 } //1 GetxType
		$a_01_4 = {4c 00 6f 00 78 00 61 00 64 00 } //1 Loxad
		$a_01_5 = {49 00 6e 00 76 00 78 00 6f 00 6b 00 65 00 } //1 Invxoke
		$a_01_6 = {47 00 65 00 74 00 4d 00 65 00 74 00 78 00 68 00 6f 00 64 00 } //1 GetMetxhod
		$a_01_7 = {47 5a 69 70 53 74 72 65 61 6d } //1 GZipStream
		$a_01_8 = {52 65 70 6c 61 63 65 } //1 Replace
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}