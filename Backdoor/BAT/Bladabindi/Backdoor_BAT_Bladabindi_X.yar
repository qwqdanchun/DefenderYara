
rule Backdoor_BAT_Bladabindi_X{
	meta:
		description = "Backdoor:BAT/Bladabindi.X,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5b 9d 06 17 1f 65 9d 06 18 1f 6e 9d 06 19 1f 64 9d 06 1a 1f 6f 9d 06 1b 1f 66 9d 06 1c 1f 5d } //01 00 
		$a_01_1 = {7c 9d 06 17 1f 27 9d 06 18 1f 7c 9d 06 19 1f 27 9d 06 1a 1f 7c } //01 00 
		$a_01_2 = {00 64 72 69 76 65 00 46 69 6c 65 73 00 6c 6e 6b 00 } //01 00 
		$a_01_3 = {35 00 35 00 2d 00 33 00 32 00 2d 00 36 00 38 00 2d 00 37 00 30 00 2d 00 35 00 41 00 2d 00 36 00 45 00 2d 00 35 00 32 00 2d 00 34 00 43 00 2d 00 35 00 41 00 2d 00 35 00 38 00 2d 00 36 00 43 00 2d 00 34 00 35 00 2d 00 36 00 32 00 2d 00 33 00 33 00 2d 00 36 00 34 00 2d 00 37 00 35 00 } //01 00  55-32-68-70-5A-6E-52-4C-5A-58-6C-45-62-33-64-75
		$a_01_4 = {36 00 32 00 2d 00 36 00 44 00 2d 00 35 00 36 00 2d 00 33 00 30 00 2d 00 36 00 33 00 2d 00 33 00 32 00 2d 00 36 00 37 00 2d 00 36 00 37 00 2d 00 35 00 41 00 2d 00 36 00 44 00 2d 00 36 00 43 00 2d 00 37 00 39 00 2d 00 35 00 41 00 2d 00 35 00 38 00 2d 00 36 00 34 00 2d 00 36 00 38 00 2d 00 36 00 32 00 2d 00 34 00 37 00 2d 00 37 00 37 00 2d 00 36 00 37 00 2d 00 35 00 39 00 2d 00 35 00 37 00 2d 00 35 00 32 00 2d 00 36 00 42 00 2d 00 34 00 39 00 2d 00 34 00 37 00 2d 00 34 00 36 00 2d 00 37 00 33 00 2d 00 36 00 32 00 2d 00 34 00 37 00 2d 00 33 00 39 00 2d 00 33 00 33 00 2d 00 35 00 41 00 2d 00 35 00 37 00 2d 00 35 00 32 00 2d 00 37 00 37 00 2d 00 36 00 33 00 2d 00 36 00 44 00 2d 00 33 00 39 00 2d 00 36 00 45 00 2d 00 36 00 33 00 2d 00 36 00 44 00 } //01 00  62-6D-56-30-63-32-67-67-5A-6D-6C-79-5A-58-64-68-62-47-77-67-59-57-52-6B-49-47-46-73-62-47-39-33-5A-57-52-77-63-6D-39-6E-63-6D
		$a_01_5 = {35 00 39 00 2d 00 33 00 32 00 2d 00 33 00 31 00 2d 00 36 00 42 00 2d 00 34 00 43 00 2d 00 36 00 44 00 2d 00 35 00 36 00 2d 00 33 00 34 00 2d 00 35 00 41 00 2d 00 35 00 33 00 2d 00 34 00 31 00 2d 00 37 00 36 00 2d 00 36 00 31 00 2d 00 37 00 39 00 2d 00 34 00 32 00 2d 00 37 00 37 00 2d 00 36 00 31 00 2d 00 35 00 37 00 2d 00 33 00 35 00 2d 00 36 00 45 00 2d 00 34 00 39 00 2d 00 34 00 34 00 2d 00 34 00 31 00 2d 00 36 00 37 00 2d 00 34 00 41 00 2d 00 36 00 39 00 2d 00 34 00 32 00 2d 00 36 00 42 00 2d 00 35 00 41 00 2d 00 35 00 37 00 2d 00 37 00 37 00 2d 00 36 00 37 00 2d 00 34 00 39 00 2d 00 36 00 37 00 2d 00 33 00 44 00 2d 00 33 00 44 00 } //00 00  59-32-31-6B-4C-6D-56-34-5A-53-41-76-61-79-42-77-61-57-35-6E-49-44-41-67-4A-69-42-6B-5A-57-77-67-49-67-3D-3D
	condition:
		any of ($a_*)
 
}