
rule PWS_Win32_Remexi_YA_MTB{
	meta:
		description = "PWS:Win32/Remexi.YA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 00 65 00 61 00 72 00 63 00 68 00 26 00 75 00 70 00 6c 00 6f 00 61 00 64 00 } //01 00  search&upload
		$a_01_1 = {3c 00 2f 00 53 00 63 00 72 00 65 00 65 00 6e 00 43 00 61 00 70 00 74 00 75 00 72 00 65 00 2d 00 3e 00 } //01 00  </ScreenCapture->
		$a_01_2 = {49 00 45 00 43 00 72 00 61 00 73 00 68 00 52 00 65 00 70 00 6f 00 72 00 74 00 2e 00 69 00 6e 00 66 00 } //01 00  IECrashReport.inf
		$a_01_3 = {3c 00 2f 00 2a 00 63 00 6c 00 69 00 70 00 62 00 6f 00 61 00 72 00 64 00 20 00 49 00 6d 00 61 00 67 00 65 00 2a 00 3e 00 } //00 00  </*clipboard Image*>
	condition:
		any of ($a_*)
 
}