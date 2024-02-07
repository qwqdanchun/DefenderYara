
rule TrojanDownloader_Win32_Small_RK{
	meta:
		description = "TrojanDownloader:Win32/Small.RK,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 08 00 00 0a 00 "
		
	strings :
		$a_02_0 = {5c 53 6c 69 63 68 69 63 65 5c 48 61 6b 6f 76 61 6e 6a 65 5c 90 02 f0 2e 70 64 62 90 00 } //05 00 
		$a_00_1 = {53 5f 4e 6f 72 74 6f 6e 35 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //05 00  S_Norton5.My.Resources
		$a_00_2 = {46 00 61 00 63 00 65 00 62 00 6f 00 6f 00 6b 00 48 00 61 00 63 00 6b 00 2e 00 65 00 78 00 65 00 } //05 00  FacebookHack.exe
		$a_00_3 = {45 78 65 63 75 74 69 6f 6e 65 72 2e 65 78 65 } //05 00  Executioner.exe
		$a_00_4 = {66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 73 00 65 00 74 00 20 00 6f 00 70 00 6d 00 6f 00 64 00 65 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 } //02 00  firewall set opmode disable
		$a_00_5 = {5c 00 64 00 65 00 72 00 61 00 68 00 53 00 5c 00 65 00 72 00 69 00 57 00 65 00 6d 00 69 00 4c 00 5c 00 } //02 00  \derahS\eriWemiL\
		$a_00_6 = {5c 00 67 00 6e 00 69 00 6d 00 6f 00 63 00 6e 00 69 00 5c 00 30 00 30 00 30 00 32 00 79 00 65 00 6b 00 6e 00 6f 00 44 00 65 00 5c 00 } //02 00  \gnimocni\0002yeknoDe\
		$a_00_7 = {5c 00 72 00 65 00 64 00 6c 00 6f 00 66 00 20 00 64 00 65 00 72 00 61 00 68 00 73 00 20 00 79 00 6d 00 5c 00 } //00 00  \redlof derahs ym\
	condition:
		any of ($a_*)
 
}