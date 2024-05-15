
rule Trojan_BAT_Samas_A_MTB{
	meta:
		description = "Trojan:BAT/Samas.A!MTB,SIGNATURE_TYPE_PEHSTR,17 00 16 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {5c 00 6e 00 75 00 52 00 5c 00 6e 00 6f 00 69 00 73 00 72 00 65 00 56 00 74 00 6e 00 65 00 72 00 72 00 75 00 43 00 5c 00 73 00 77 00 6f 00 64 00 6e 00 69 00 57 00 5c 00 74 00 66 00 6f 00 73 00 6f 00 72 00 63 00 69 00 4d 00 5c 00 65 00 72 00 61 00 77 00 74 00 66 00 6f 00 53 00 } //0a 00  \nuR\noisreVtnerruC\swodniW\tfosorciM\erawtfoS
		$a_01_1 = {2f 00 63 00 20 00 73 00 63 00 68 00 74 00 61 00 73 00 6b 00 73 00 20 00 2f 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 2f 00 66 00 20 00 2f 00 73 00 63 00 20 00 6f 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 20 00 2f 00 72 00 6c 00 20 00 68 00 69 00 67 00 68 00 65 00 73 00 74 00 20 00 2f 00 74 00 6e 00 } //01 00  /c schtasks /create /f /sc onlogon /rl highest /tn
		$a_01_2 = {43 68 65 63 6b 52 65 6d 6f 74 65 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  CheckRemoteDebuggerPresent
		$a_01_3 = {52 53 41 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00  RSACryptoServiceProvider
		$a_01_4 = {25 00 41 00 70 00 70 00 44 00 61 00 74 00 61 00 25 00 } //01 00  %AppData%
		$a_01_5 = {50 00 61 00 73 00 74 00 65 00 62 00 69 00 6e 00 } //00 00  Pastebin
		$a_01_6 = {00 67 16 00 00 91 e6 db 2e 69 dc d8 d9 a2 ce 0e de 00 e2 0e } //00 01 
	condition:
		any of ($a_*)
 
}