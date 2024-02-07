
rule Worm_Win32_Autorun_KF{
	meta:
		description = "Worm:Win32/Autorun.KF,SIGNATURE_TYPE_PEHSTR,20 00 1f 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {5c 00 63 00 79 00 64 00 65 00 6e 00 } //0a 00  \cyden
		$a_01_1 = {52 00 61 00 76 00 44 00 72 00 2e 00 65 00 78 00 65 00 20 00 25 00 31 00 } //0a 00  RavDr.exe %1
		$a_01_2 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 52 00 65 00 63 00 79 00 63 00 6c 00 65 00 64 00 2e 00 65 00 78 00 65 00 } //01 00  shell\open\Command=Recycled.exe
		$a_01_3 = {45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 5c 00 46 00 6f 00 6c 00 64 00 65 00 72 00 5c 00 48 00 69 00 64 00 64 00 65 00 6e 00 5c 00 53 00 48 00 4f 00 57 00 41 00 4c 00 4c 00 5c 00 43 00 68 00 65 00 63 00 6b 00 65 00 64 00 56 00 61 00 6c 00 75 00 65 00 } //01 00  Explorer\Advanced\Folder\Hidden\SHOWALL\CheckedValue
		$a_01_4 = {41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //00 00  Autorun.inf
	condition:
		any of ($a_*)
 
}