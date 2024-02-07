
rule Trojan_BAT_Evrial_B{
	meta:
		description = "Trojan:BAT/Evrial.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 00 6c 00 68 00 6f 00 73 00 74 00 61 00 2e 00 65 00 78 00 65 00 } //01 00  dlhosta.exe
		$a_01_1 = {2f 00 51 00 75 00 74 00 72 00 61 00 2f 00 45 00 76 00 72 00 69 00 61 00 6c 00 2f 00 6d 00 61 00 73 00 74 00 65 00 72 00 2f 00 } //01 00  /Qutra/Evrial/master/
		$a_01_2 = {5c 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 2e 00 6c 00 6f 00 67 00 } //01 00  \passwords.log
		$a_01_3 = {42 00 75 00 79 00 20 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 20 00 45 00 76 00 72 00 69 00 61 00 6c 00 3a 00 20 00 74 00 2e 00 6d 00 65 00 2f 00 51 00 75 00 74 00 72 00 61 00 63 00 68 00 6b 00 61 00 } //00 00  Buy Project Evrial: t.me/Qutrachka
	condition:
		any of ($a_*)
 
}