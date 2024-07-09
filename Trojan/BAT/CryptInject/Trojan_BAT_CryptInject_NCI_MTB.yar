
rule Trojan_BAT_CryptInject_NCI_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.NCI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {28 07 00 00 06 6f ?? ?? ?? 0a 72 ?? ?? ?? 70 02 7b ?? ?? ?? 04 72 ?? ?? ?? 70 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 72 ?? ?? ?? 70 72 ?? ?? ?? 70 16 20 ?? ?? ?? 00 17 6f ?? ?? ?? 0a 00 02 7b ?? ?? ?? 04 72 ?? ?? ?? 70 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 18 28 ?? ?? ?? 0a } //1
		$a_01_1 = {4a 00 6f 00 65 00 52 00 4d 00 72 00 65 00 6d 00 6f 00 74 00 65 00 52 00 65 00 6c 00 65 00 61 00 73 00 65 00 38 00 33 00 } //1 JoeRMremoteRelease83
		$a_01_2 = {4a 00 6f 00 65 00 72 00 6d 00 2e 00 63 00 6f 00 6d 00 20 00 43 00 75 00 73 00 74 00 6f 00 6d 00 65 00 72 00 73 00 20 00 52 00 65 00 6d 00 6f 00 74 00 65 00 20 00 41 00 73 00 73 00 69 00 73 00 74 00 61 00 6e 00 63 00 65 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 } //1 Joerm.com Customers Remote Assistance Updater
		$a_01_3 = {4a 00 6f 00 65 00 72 00 6d 00 2e 00 63 00 6f 00 6d 00 20 00 50 00 43 00 41 00 73 00 73 00 69 00 73 00 74 00 61 00 6e 00 63 00 65 00 20 00 41 00 75 00 74 00 6f 00 55 00 70 00 64 00 61 00 74 00 65 00 } //1 Joerm.com PCAssistance AutoUpdate
		$a_01_4 = {50 00 43 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 } //1 PCMonitor
		$a_01_5 = {41 00 75 00 74 00 6f 00 55 00 70 00 64 00 61 00 74 00 65 00 45 00 72 00 72 00 6f 00 72 00 4c 00 6f 00 67 00 2e 00 74 00 78 00 74 00 } //1 AutoUpdateErrorLog.txt
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}