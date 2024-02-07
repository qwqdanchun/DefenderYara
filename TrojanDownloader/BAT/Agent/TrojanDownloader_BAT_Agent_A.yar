
rule TrojanDownloader_BAT_Agent_A{
	meta:
		description = "TrojanDownloader:BAT/Agent.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 65 00 78 00 65 00 } //01 00  \system32\Microsoft\System.exe
		$a_01_1 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 65 00 74 00 63 00 5c 00 68 00 6f 00 73 00 74 00 73 00 } //01 00  \system32\drivers\etc\hosts
		$a_01_2 = {53 00 6f 00 66 00 74 00 57 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  SoftWare\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 20 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6d 00 65 00 73 00 73 00 65 00 6e 00 67 00 65 00 72 00 2e 00 6d 00 73 00 6e 00 2e 00 63 00 6f 00 6d 00 } //00 00  explorer http://messenger.msn.com
	condition:
		any of ($a_*)
 
}