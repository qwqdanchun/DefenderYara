
rule HackTool_Win32_Badcastle_A_dha{
	meta:
		description = "HackTool:Win32/Badcastle.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {5c 00 5c 00 2e 00 5c 00 70 00 69 00 70 00 65 00 5c 00 7b 00 30 00 7d 00 5c 00 70 00 69 00 70 00 65 00 5c 00 73 00 70 00 6f 00 6f 00 6c 00 73 00 73 00 } //1 \\.\pipe\{0}\pipe\spoolss
		$a_01_1 = {31 00 32 00 33 00 34 00 35 00 36 00 37 00 38 00 2d 00 31 00 32 00 33 00 34 00 2d 00 41 00 42 00 43 00 44 00 2d 00 45 00 46 00 30 00 30 00 2d 00 30 00 31 00 32 00 33 00 34 00 35 00 36 00 37 00 38 00 39 00 41 00 42 00 } //1 12345678-1234-ABCD-EF00-0123456789AB
		$a_01_2 = {5c 00 70 00 69 00 70 00 65 00 5c 00 73 00 61 00 6d 00 72 00 } //1 \pipe\samr
		$a_01_3 = {4c 00 73 00 61 00 72 00 51 00 75 00 65 00 72 00 79 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 6c 00 69 00 63 00 79 00 20 00 66 00 61 00 69 00 6c 00 65 00 64 00 20 00 30 00 78 00 } //1 LsarQueryInformationPolicy failed 0x
		$a_01_4 = {5b 00 21 00 5d 00 20 00 52 00 70 00 63 00 52 00 65 00 6d 00 6f 00 74 00 65 00 46 00 69 00 6e 00 64 00 46 00 69 00 72 00 73 00 74 00 50 00 72 00 69 00 6e 00 74 00 65 00 72 00 43 00 68 00 61 00 6e 00 67 00 65 00 4e 00 6f 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 45 00 78 00 20 00 66 00 61 00 69 00 6c 00 21 00 } //1 [!] RpcRemoteFindFirstPrinterChangeNotificationEx fail!
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}