
rule Trojan_BAT_AsyncRAT_ARAQ_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.ARAQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 08 00 "
		
	strings :
		$a_80_0 = {2f 68 61 74 74 68 67 6f 6c 61 2e 76 6d 70 2e 64 6c 6c } ///hatthgola.vmp.dll  02 00 
		$a_00_1 = {74 00 78 00 74 00 2e 00 63 00 6e 00 79 00 73 00 61 00 2f 00 31 00 39 00 39 00 30 00 32 00 3a 00 30 00 33 00 2e 00 39 00 39 00 31 00 2e 00 32 00 31 00 2e 00 34 00 30 00 32 00 2f 00 2f 00 3a 00 70 00 74 00 74 00 68 00 } //02 00  txt.cnysa/19902:03.991.21.402//:ptth
		$a_00_2 = {53 00 43 00 48 00 74 00 41 00 73 00 4b 00 73 00 2e 00 45 00 58 00 65 00 } //02 00  SCHtAsKs.EXe
		$a_00_3 = {2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 74 00 6e 00 } //02 00  /create /tn
		$a_00_4 = {25 00 41 00 50 00 70 00 44 00 41 00 74 00 61 00 25 00 } //00 00  %APpDAta%
	condition:
		any of ($a_*)
 
}