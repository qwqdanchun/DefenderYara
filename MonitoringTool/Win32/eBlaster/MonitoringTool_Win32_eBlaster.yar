
rule MonitoringTool_Win32_eBlaster{
	meta:
		description = "MonitoringTool:Win32/eBlaster,SIGNATURE_TYPE_PEHSTR,0d 00 0d 00 03 00 00 05 00 "
		
	strings :
		$a_01_0 = {43 00 6c 00 69 00 63 00 6b 00 20 00 68 00 65 00 72 00 65 00 20 00 74 00 6f 00 20 00 74 00 65 00 6c 00 6c 00 20 00 61 00 20 00 66 00 72 00 69 00 65 00 6e 00 64 00 20 00 61 00 62 00 6f 00 75 00 74 00 20 00 65 00 42 00 6c 00 61 00 73 00 74 00 65 00 72 00 3a 00 } //03 00  Click here to tell a friend about eBlaster:
		$a_01_1 = {50 00 6c 00 65 00 61 00 73 00 65 00 20 00 63 00 6f 00 6e 00 74 00 61 00 63 00 74 00 20 00 53 00 70 00 65 00 63 00 74 00 6f 00 72 00 53 00 6f 00 66 00 74 00 20 00 61 00 74 00 20 00 77 00 77 00 77 00 2e 00 73 00 70 00 65 00 63 00 74 00 6f 00 72 00 73 00 6f 00 66 00 74 00 2e 00 63 00 6f 00 6d 00 } //05 00  Please contact SpectorSoft at www.spectorsoft.com
		$a_01_2 = {59 00 6f 00 75 00 72 00 20 00 65 00 42 00 6c 00 61 00 73 00 74 00 65 00 72 00 20 00 53 00 65 00 72 00 69 00 61 00 6c 00 20 00 6e 00 75 00 6d 00 62 00 65 00 72 00 20 00 69 00 73 00 20 00 69 00 6e 00 76 00 61 00 6c 00 69 00 64 00 2e 00 } //00 00  Your eBlaster Serial number is invalid.
	condition:
		any of ($a_*)
 
}