
rule TrojanSpy_BAT_Sisundo_A{
	meta:
		description = "TrojanSpy:BAT/Sisundo.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {26 00 70 00 61 00 72 00 61 00 6d 00 5f 00 73 00 6b 00 6c 00 6f 00 67 00 3d 00 } //01 00  &param_sklog=
		$a_01_1 = {55 00 50 00 4c 00 4f 00 41 00 44 00 5f 00 41 00 4e 00 44 00 5f 00 52 00 55 00 4e 00 } //01 00  UPLOAD_AND_RUN
		$a_01_2 = {53 00 41 00 4d 00 50 00 5f 00 49 00 4e 00 53 00 54 00 41 00 4c 00 4c 00 5f 00 53 00 54 00 45 00 41 00 4c 00 45 00 52 00 } //01 00  SAMP_INSTALL_STEALER
		$a_01_3 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //00 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_4 = {00 87 10 } //00 00 
	condition:
		any of ($a_*)
 
}