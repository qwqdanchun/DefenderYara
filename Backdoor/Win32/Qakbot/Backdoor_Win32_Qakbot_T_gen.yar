
rule Backdoor_Win32_Qakbot_T_gen{
	meta:
		description = "Backdoor:Win32/Qakbot.T!gen,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 00 3a 00 5c 00 46 00 39 00 4f 00 75 00 4a 00 53 00 6c 00 55 00 36 00 63 00 59 00 5c 00 6f 00 39 00 62 00 62 00 5c 00 63 00 31 00 38 00 4c 00 2e 00 78 00 6d 00 6c 00 } //01 00  D:\F9OuJSlU6cY\o9bb\c18L.xml
		$a_01_1 = {4f 41 6e 50 76 51 76 58 49 78 4b 70 77 7a 62 00 } //01 00  䅏偮其塶硉灋穷b
		$a_01_2 = {54 79 34 41 43 62 30 61 6a 4c 56 49 72 67 44 00 } //01 00  祔䄴扃愰䱪䥖杲D
		$a_01_3 = {58 00 3a 00 5c 00 35 00 38 00 49 00 37 00 58 00 54 00 6b 00 31 00 5c 00 67 00 61 00 50 00 4a 00 47 00 44 00 42 00 70 00 43 00 5c 00 37 00 48 00 41 00 53 00 74 00 50 00 63 00 53 00 } //01 00  X:\58I7XTk1\gaPJGDBpC\7HAStPcS
		$a_01_4 = {6e 39 45 4d 30 55 70 00 } //05 00  㥮䵅唰p
		$a_01_5 = {04 0f b7 00 3d 4d 5a 00 00 74 02 eb } //02 00 
		$a_01_6 = {00 70 ff d0 83 ec } //00 00 
		$a_00_7 = {5d 04 00 00 e3 6e 03 } //80 5c 
	condition:
		any of ($a_*)
 
}