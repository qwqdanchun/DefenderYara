
rule Trojan_PowerShell_Shellcode_SV_MTB{
	meta:
		description = "Trojan:PowerShell/Shellcode.SV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 00 76 00 63 00 61 00 74 00 5f 00 72 00 75 00 6e 00 2e 00 62 00 61 00 74 00 } //01 00  evcat_run.bat
		$a_01_1 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2f 00 66 00 20 00 2f 00 74 00 20 00 2f 00 69 00 6d 00 20 00 74 00 6d 00 5f 00 73 00 65 00 6e 00 64 00 5f 00 65 00 76 00 63 00 61 00 74 00 33 00 2e 00 65 00 78 00 65 00 } //01 00  taskkill.exe /f /t /im tm_send_evcat3.exe
		$a_01_2 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2f 00 66 00 20 00 2f 00 74 00 20 00 2f 00 69 00 6d 00 20 00 45 00 56 00 2d 00 43 00 41 00 54 00 2d 00 4b 00 49 00 4f 00 53 00 4b 00 32 00 2e 00 65 00 78 00 65 00 } //01 00  taskkill.exe /f /t /im EV-CAT-KIOSK2.exe
		$a_01_3 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2f 00 66 00 20 00 2f 00 74 00 20 00 2f 00 69 00 6d 00 20 00 65 00 76 00 63 00 61 00 74 00 5f 00 65 00 6e 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  taskkill.exe /f /t /im evcat_end.exe
		$a_01_4 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2f 00 66 00 20 00 2f 00 74 00 20 00 2f 00 69 00 6d 00 20 00 45 00 6e 00 64 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  taskkill.exe /f /t /im EndProcess.exe
		$a_01_5 = {45 00 56 00 2d 00 43 00 41 00 54 00 2d 00 4b 00 49 00 4f 00 53 00 4b 00 33 00 2e 00 65 00 78 00 65 00 } //00 00  EV-CAT-KIOSK3.exe
	condition:
		any of ($a_*)
 
}