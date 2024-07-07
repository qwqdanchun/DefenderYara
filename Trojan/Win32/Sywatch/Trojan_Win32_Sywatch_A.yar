
rule Trojan_Win32_Sywatch_A{
	meta:
		description = "Trojan:Win32/Sywatch.A,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {5c 00 46 00 69 00 6c 00 65 00 45 00 5a 00 20 00 48 00 54 00 54 00 50 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 53 00 61 00 6d 00 70 00 6c 00 65 00 2e 00 76 00 62 00 70 00 } //1 \FileEZ HTTP\ServiceSample.vbp
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 49 00 6e 00 74 00 65 00 6c 00 6c 00 69 00 46 00 6f 00 72 00 6d 00 73 00 5c 00 53 00 74 00 6f 00 72 00 61 00 67 00 65 00 } //1 Software\Microsoft\Internet Explorer\IntelliForms\Storage
		$a_01_2 = {73 00 79 00 6d 00 61 00 6e 00 74 00 65 00 63 00 7a 00 2e 00 63 00 6f 00 6d 00 } //1 symantecz.com
		$a_01_3 = {2f 00 70 00 72 00 6f 00 64 00 75 00 63 00 74 00 73 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 2f 00 } //1 /products/downloads/
		$a_01_4 = {6e 00 65 00 74 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 54 00 61 00 73 00 6b 00 73 00 41 00 6e 00 61 00 6c 00 79 00 73 00 65 00 72 00 } //1 net start TasksAnalyser
		$a_01_5 = {2a 00 56 00 4d 00 57 00 41 00 52 00 45 00 2a 00 } //1 *VMWARE*
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}