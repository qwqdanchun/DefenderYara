
rule Backdoor_Win64_Lagpipe_A_dha{
	meta:
		description = "Backdoor:Win64/Lagpipe.A!dha,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5b 00 2b 00 5d 00 20 00 52 00 70 00 63 00 52 00 65 00 6d 00 6f 00 74 00 65 00 46 00 69 00 6e 00 64 00 46 00 69 00 72 00 73 00 74 00 50 00 72 00 69 00 6e 00 74 00 65 00 72 00 43 00 68 00 61 00 6e 00 67 00 65 00 4e 00 6f 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 45 00 78 00 20 00 45 00 72 00 72 00 6f 00 72 00 20 00 25 00 64 00 } //1 [+] RpcRemoteFindFirstPrinterChangeNotificationEx Error %d
		$a_01_1 = {5b 00 2b 00 5d 00 20 00 52 00 70 00 63 00 4f 00 70 00 65 00 6e 00 50 00 72 00 69 00 6e 00 74 00 65 00 72 00 20 00 45 00 72 00 72 00 6f 00 72 00 20 00 25 00 64 00 } //1 [+] RpcOpenPrinter Error %d
		$a_01_2 = {5b 00 2d 00 5d 00 20 00 41 00 20 00 70 00 72 00 69 00 76 00 69 00 6c 00 65 00 67 00 65 00 20 00 69 00 73 00 20 00 6d 00 69 00 73 00 73 00 69 00 6e 00 67 00 3a 00 } //1 [-] A privilege is missing:
		$a_01_3 = {5c 00 5c 00 2e 00 5c 00 70 00 69 00 70 00 65 00 5c 00 25 00 77 00 73 00 5c 00 70 00 69 00 70 00 65 00 5c 00 73 00 70 00 6f 00 6f 00 6c 00 73 00 73 00 } //1 \\.\pipe\%ws\pipe\spoolss
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}