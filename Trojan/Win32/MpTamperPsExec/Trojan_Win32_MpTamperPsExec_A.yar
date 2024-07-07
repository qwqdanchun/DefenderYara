
rule Trojan_Win32_MpTamperPsExec_A{
	meta:
		description = "Trojan:Win32/MpTamperPsExec.A,SIGNATURE_TYPE_CMDHSTR_EXT,06 00 06 00 08 00 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //1 powershell
		$a_00_1 = {53 00 65 00 74 00 2d 00 4d 00 70 00 50 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 } //1 Set-MpPreference
		$a_00_2 = {2d 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 61 00 6c 00 74 00 69 00 6d 00 65 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 69 00 6e 00 67 00 } //1 -DisableRealtimeMonitoring
		$a_00_3 = {4e 00 65 00 77 00 2d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //1 New-Object
		$a_00_4 = {4e 00 65 00 74 00 2e 00 57 00 65 00 62 00 63 00 6c 00 69 00 65 00 6e 00 74 00 } //1 Net.Webclient
		$a_00_5 = {2e 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 73 00 74 00 72 00 69 00 6e 00 67 00 } //1 .downloadstring
		$a_02_6 = {2d 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 72 00 65 00 61 00 6c 00 74 00 69 00 6d 00 65 00 6d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 69 00 6e 00 67 00 20 00 90 02 02 66 00 61 00 6c 00 73 00 65 00 90 00 } //-5
		$a_00_7 = {2d 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 61 00 6c 00 74 00 69 00 6d 00 65 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 69 00 6e 00 67 00 20 00 30 00 } //-5 -DisableRealtimeMonitoring 0
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_02_6  & 1)*-5+(#a_00_7  & 1)*-5) >=6
 
}