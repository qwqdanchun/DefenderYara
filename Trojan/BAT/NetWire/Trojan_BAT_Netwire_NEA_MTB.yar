
rule Trojan_BAT_Netwire_NEA_MTB{
	meta:
		description = "Trojan:BAT/Netwire.NEA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 05 00 00 05 00 "
		
	strings :
		$a_01_0 = {51 00 41 00 42 00 53 00 6a 00 48 00 45 00 38 00 75 00 58 00 55 00 6a 00 56 00 6f 00 49 00 55 00 2b 00 43 00 69 00 30 00 43 00 67 00 3d 00 3d 00 } //05 00  QABSjHE8uXUjVoIU+Ci0Cg==
		$a_01_1 = {47 00 36 00 45 00 47 00 71 00 50 00 56 00 35 00 4a 00 30 00 63 00 3d 00 } //02 00  G6EGqPV5J0c=
		$a_01_2 = {44 00 6e 00 73 00 45 00 78 00 69 00 74 00 5f 00 4e 00 65 00 74 00 77 00 2e 00 65 00 78 00 65 00 } //02 00  DnsExit_Netw.exe
		$a_01_3 = {53 00 68 00 6f 00 72 00 74 00 50 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 64 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //01 00  ShortPddddddddddddrocess
		$a_01_4 = {4f 62 66 75 73 63 61 74 65 64 42 79 47 6f 6c 69 61 74 68 } //00 00  ObfuscatedByGoliath
	condition:
		any of ($a_*)
 
}