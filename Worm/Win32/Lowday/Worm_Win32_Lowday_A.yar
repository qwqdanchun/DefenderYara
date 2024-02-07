
rule Worm_Win32_Lowday_A{
	meta:
		description = "Worm:Win32/Lowday.A,SIGNATURE_TYPE_PEHSTR,0d 00 0d 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 4b 00 65 00 63 00 69 00 6c 00 5c 00 53 00 65 00 74 00 61 00 6e 00 57 00 61 00 72 00 65 00 5c 00 4c 00 57 00 44 00 61 00 79 00 2e 00 32 00 5c 00 4c 00 57 00 44 00 61 00 79 00 2e 00 76 00 62 00 70 00 } //01 00  ProgramKecil\SetanWare\LWDay.2\LWDay.vbp
		$a_01_1 = {52 00 75 00 6e 00 5c 00 77 00 69 00 6e 00 64 00 6c 00 6c 00 } //01 00  Run\windll
		$a_01_2 = {5b 00 41 00 75 00 74 00 6f 00 52 00 75 00 6e 00 5d 00 } //01 00  [AutoRun]
		$a_01_3 = {4f 00 50 00 45 00 4e 00 3d 00 63 00 65 00 72 00 69 00 74 00 61 00 20 00 63 00 69 00 6e 00 74 00 61 00 20 00 44 00 41 00 47 00 4f 00 34 00 2e 00 64 00 6f 00 63 00 20 00 20 00 2e 00 65 00 78 00 65 00 } //00 00  OPEN=cerita cinta DAGO4.doc  .exe
	condition:
		any of ($a_*)
 
}