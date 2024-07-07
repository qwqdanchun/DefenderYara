
rule Trojan_Win32_VB_TF{
	meta:
		description = "Trojan:Win32/VB.TF,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 "
		
	strings :
		$a_03_0 = {89 85 7c fe ff ff c7 85 74 fe ff ff 08 00 00 00 8d 85 74 fe ff ff 50 ff 15 90 01 02 40 00 8d 8d 98 fe ff ff 90 00 } //5
		$a_00_1 = {64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 64 00 69 00 73 00 64 00 6e 00 5c 00 65 00 78 00 70 00 31 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //5 drivers\disdn\exp1orer.exe
		$a_00_2 = {73 00 74 00 6f 00 70 00 66 00 75 00 77 00 75 00 } //5 stopfuwu
		$a_00_3 = {73 00 71 00 6c 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 42 00 65 00 74 00 68 00 73 00 65 00 72 00 76 00 } //1 sql delete Bethserv
		$a_00_4 = {73 00 71 00 6c 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 74 00 61 00 73 00 6b 00 6d 00 67 00 72 00 } //1 sql delete taskmgr
		$a_00_5 = {73 00 71 00 6c 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 } //1 sql delete svchost
		$a_00_6 = {73 00 71 00 6c 00 20 00 73 00 74 00 6f 00 70 00 20 00 52 00 61 00 73 00 41 00 75 00 74 00 6f 00 43 00 6f 00 6e 00 6e 00 } //1 sql stop RasAutoConn
		$a_00_7 = {73 00 71 00 6c 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 52 00 61 00 73 00 41 00 75 00 74 00 6f 00 43 00 6f 00 6e 00 6e 00 } //1 sql delete RasAutoConn
	condition:
		((#a_03_0  & 1)*5+(#a_00_1  & 1)*5+(#a_00_2  & 1)*5+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=16
 
}