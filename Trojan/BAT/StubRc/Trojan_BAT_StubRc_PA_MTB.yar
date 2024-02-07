
rule Trojan_BAT_StubRc_PA_MTB{
	meta:
		description = "Trojan:BAT/StubRc.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {72 75 61 6d 6f 74 68 65 72 66 75 6b 65 72 } //01 00  ruamotherfuker
		$a_01_1 = {3c 00 40 00 40 00 45 00 4e 00 43 00 45 00 58 00 45 00 40 00 40 00 3e 00 } //01 00  <@@ENCEXE@@>
		$a_00_2 = {53 70 33 33 44 20 43 72 79 70 74 65 72 } //01 00  Sp33D Crypter
		$a_00_3 = {52 75 73 74 79 5f 76 20 50 72 6f 64 75 63 74 69 6f 6e 73 } //01 00  Rusty_v Productions
		$a_02_4 = {5c 41 6c 78 53 74 75 62 5c 41 6c 78 53 74 75 62 5c 6f 62 6a 5c 90 02 10 5c 53 70 33 33 44 20 53 74 75 62 2e 70 64 62 90 00 } //01 00 
		$a_01_5 = {53 00 70 00 33 00 33 00 44 00 20 00 53 00 74 00 75 00 62 00 2e 00 65 00 78 00 65 00 } //00 00  Sp33D Stub.exe
	condition:
		any of ($a_*)
 
}