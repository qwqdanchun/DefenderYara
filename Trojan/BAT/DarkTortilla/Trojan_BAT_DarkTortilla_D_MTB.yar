
rule Trojan_BAT_DarkTortilla_D_MTB{
	meta:
		description = "Trojan:BAT/DarkTortilla.D!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 0d 00 00 02 00 "
		
	strings :
		$a_01_0 = {41 00 70 00 70 00 4c 00 61 00 75 00 6e 00 63 00 68 00 2e 00 65 00 78 00 65 00 } //02 00  AppLaunch.exe
		$a_01_1 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //02 00  svchost.exe
		$a_01_2 = {52 00 65 00 67 00 41 00 73 00 6d 00 2e 00 65 00 78 00 65 00 } //02 00  RegAsm.exe
		$a_01_3 = {49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 55 00 74 00 69 00 6c 00 2e 00 65 00 78 00 65 00 } //02 00  InstallUtil.exe
		$a_01_4 = {6d 00 73 00 63 00 6f 00 72 00 73 00 76 00 77 00 2e 00 65 00 78 00 65 00 } //02 00  mscorsvw.exe
		$a_01_5 = {41 00 64 00 64 00 49 00 6e 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //02 00  AddInProcess32.exe
		$a_01_6 = {6d 00 73 00 62 00 75 00 69 00 6c 00 64 00 2e 00 65 00 78 00 65 00 } //02 00  msbuild.exe
		$a_01_7 = {76 00 6d 00 77 00 61 00 72 00 65 00 20 00 75 00 73 00 62 00 20 00 70 00 6f 00 69 00 6e 00 74 00 69 00 6e 00 67 00 20 00 64 00 65 00 76 00 69 00 63 00 65 00 } //02 00  vmware usb pointing device
		$a_01_8 = {57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 } //02 00  WScript.Shell
		$a_01_9 = {74 00 70 00 76 00 63 00 67 00 61 00 74 00 65 00 77 00 61 00 79 00 } //02 00  tpvcgateway
		$a_01_10 = {46 61 6b 65 4d 65 73 73 61 67 65 } //02 00  FakeMessage
		$a_01_11 = {41 64 64 6f 6e 50 61 63 6b 61 67 65 } //02 00  AddonPackage
		$a_01_12 = {49 6e 73 74 61 6c 6c 53 74 72 75 63 74 } //00 00  InstallStruct
	condition:
		any of ($a_*)
 
}