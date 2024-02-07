
rule Virus_Win64_Phdet_A{
	meta:
		description = "Virus:Win64/Phdet.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {ba 3f b0 8f b0 e8 90 01 04 0f b7 08 81 f9 70 17 00 00 0f 8c 90 01 04 81 f9 72 17 00 00 90 00 } //01 00 
		$a_00_1 = {39 00 44 00 44 00 36 00 41 00 46 00 41 00 31 00 2d 00 38 00 36 00 34 00 36 00 2d 00 34 00 37 00 32 00 30 00 2d 00 38 00 33 00 36 00 42 00 2d 00 45 00 44 00 43 00 42 00 31 00 30 00 38 00 35 00 38 00 37 00 30 00 31 00 } //00 00  9DD6AFA1-8646-4720-836B-EDCB10858701
	condition:
		any of ($a_*)
 
}