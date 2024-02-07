
rule Trojan_Win32_Fareit_VB_MTB{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {55 00 63 00 6b 00 39 00 75 00 4e 00 50 00 30 00 36 00 7a 00 4f 00 70 00 38 00 34 00 58 00 6c 00 72 00 37 00 31 00 44 00 31 00 31 00 33 00 } //00 00  Uck9uNP06zOp84Xlr71D113
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_2{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {5a 00 4a 00 53 00 45 00 70 00 52 00 78 00 54 00 68 00 4b 00 46 00 6d 00 46 00 71 00 6a 00 44 00 71 00 4a 00 5a 00 34 00 30 00 79 00 38 00 35 00 4c 00 37 00 34 00 32 00 31 00 31 00 } //00 00  ZJSEpRxThKFmFqjDqJZ40y85L74211
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_3{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {72 00 36 00 79 00 70 00 54 00 62 00 6a 00 6c 00 48 00 65 00 59 00 62 00 5a 00 66 00 42 00 76 00 79 00 35 00 37 00 } //01 00  r6ypTbjlHeYbZfBvy57
		$a_01_2 = {51 00 57 00 41 00 42 00 41 00 4b 00 66 00 79 00 35 00 33 00 } //00 00  QWABAKfy53
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_4{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {52 00 4b 00 75 00 75 00 71 00 49 00 4c 00 6d 00 31 00 7a 00 41 00 33 00 4a 00 6a 00 57 00 70 00 41 00 63 00 63 00 61 00 30 00 68 00 63 00 44 00 74 00 70 00 76 00 53 00 77 00 68 00 36 00 4d 00 32 00 30 00 35 00 } //00 00  RKuuqILm1zA3JjWpAcca0hcDtpvSwh6M205
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_5{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_81_0 = {4b 61 77 61 69 69 2d 55 6e 69 63 6f 72 6e 2e 65 78 65 } //01 00  Kawaii-Unicorn.exe
		$a_81_1 = {63 6d 64 20 2f 63 20 72 65 6e 61 6d 65 } //01 00  cmd /c rename
		$a_81_2 = {44 6c 6c 46 75 6e 63 74 69 6f 6e 43 61 6c 6c } //01 00  DllFunctionCall
		$a_81_3 = {49 27 6d 20 55 6e 69 63 6f 72 6e } //01 00  I'm Unicorn
		$a_81_4 = {5c 55 6e 69 63 6f 72 6e } //01 00  \Unicorn
		$a_81_5 = {56 42 2e 43 6c 69 70 62 6f 61 72 64 } //00 00  VB.Clipboard
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_6{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {77 00 33 00 34 00 55 00 45 00 55 00 30 00 49 00 79 00 6c 00 75 00 65 00 6f 00 30 00 6a 00 43 00 56 00 44 00 35 00 43 00 63 00 36 00 59 00 35 00 31 00 } //01 00  w34UEU0Iylueo0jCVD5Cc6Y51
		$a_01_2 = {46 00 61 00 41 00 64 00 41 00 53 00 67 00 31 00 32 00 6a 00 54 00 45 00 4f 00 37 00 69 00 65 00 58 00 66 00 72 00 6f 00 54 00 76 00 4b 00 75 00 4f 00 32 00 34 00 } //00 00  FaAdASg12jTEO7ieXfroTvKuO24
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_7{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {57 00 49 00 4c 00 44 00 4e 00 45 00 53 00 53 00 45 00 53 00 } //01 00  WILDNESSES
		$a_01_2 = {6d 00 69 00 73 00 73 00 6f 00 75 00 6e 00 64 00 69 00 6e 00 67 00 } //01 00  missounding
		$a_01_3 = {4e 00 4f 00 4e 00 43 00 4f 00 4e 00 53 00 4f 00 4c 00 49 00 4e 00 47 00 } //01 00  NONCONSOLING
		$a_01_4 = {69 00 6e 00 74 00 65 00 72 00 74 00 69 00 6c 00 6c 00 } //01 00  intertill
		$a_01_5 = {54 00 41 00 43 00 48 00 4f 00 4d 00 45 00 54 00 52 00 45 00 } //00 00  TACHOMETRE
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_8{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {66 00 62 00 53 00 71 00 6f 00 71 00 75 00 5a 00 4e 00 32 00 6b 00 48 00 64 00 70 00 78 00 65 00 6e 00 53 00 75 00 77 00 6c 00 53 00 64 00 77 00 57 00 6d 00 32 00 70 00 43 00 45 00 71 00 4a 00 70 00 31 00 32 00 36 00 } //01 00  fbSqoquZN2kHdpxenSuwlSdwWm2pCEqJp126
		$a_01_2 = {6d 00 6d 00 71 00 48 00 74 00 7a 00 75 00 4d 00 48 00 4c 00 74 00 6e 00 78 00 41 00 67 00 6b 00 4f 00 79 00 65 00 63 00 62 00 4f 00 44 00 4a 00 46 00 6b 00 71 00 42 00 42 00 34 00 37 00 } //00 00  mmqHtzuMHLtnxAgkOyecbODJFkqBB47
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_9{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {4a 00 49 00 68 00 77 00 44 00 48 00 76 00 42 00 6f 00 48 00 59 00 33 00 4a 00 4f 00 72 00 6e 00 4a 00 38 00 4b 00 59 00 4c 00 52 00 32 00 30 00 31 00 } //01 00  JIhwDHvBoHY3JOrnJ8KYLR201
		$a_01_2 = {47 00 68 00 44 00 6c 00 6b 00 4c 00 64 00 4d 00 4d 00 6c 00 58 00 6d 00 4c 00 6e 00 35 00 79 00 4c 00 32 00 6f 00 31 00 74 00 4c 00 53 00 4f 00 43 00 58 00 45 00 44 00 58 00 56 00 37 00 6e 00 77 00 35 00 69 00 32 00 61 00 73 00 76 00 4b 00 6b 00 6a 00 64 00 37 00 31 00 38 00 31 00 36 00 31 00 } //00 00  GhDlkLdMMlXmLn5yL2o1tLSOCXEDXV7nw5i2asvKkjd718161
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_10{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {4e 00 30 00 68 00 53 00 6a 00 30 00 56 00 6d 00 51 00 4b 00 30 00 75 00 46 00 55 00 4f 00 70 00 38 00 32 00 32 00 36 00 39 00 5a 00 72 00 71 00 57 00 45 00 45 00 72 00 34 00 31 00 34 00 38 00 } //01 00  N0hSj0VmQK0uFUOp82269ZrqWEEr4148
		$a_01_2 = {45 00 73 00 68 00 4f 00 33 00 58 00 53 00 5a 00 57 00 6e 00 42 00 30 00 73 00 6c 00 72 00 7a 00 53 00 34 00 76 00 50 00 30 00 66 00 43 00 55 00 4e 00 32 00 32 00 7a 00 67 00 73 00 75 00 63 00 43 00 5a 00 73 00 58 00 44 00 69 00 44 00 37 00 35 00 } //01 00  EshO3XSZWnB0slrzS4vP0fCUN22zgsucCZsXDiD75
		$a_01_3 = {7a 00 4a 00 6f 00 63 00 52 00 6b 00 78 00 37 00 38 00 } //00 00  zJocRkx78
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_11{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {56 00 70 00 4a 00 51 00 56 00 69 00 76 00 71 00 4b 00 71 00 48 00 6f 00 72 00 50 00 65 00 4f 00 6c 00 53 00 34 00 44 00 63 00 45 00 31 00 39 00 43 00 7a 00 55 00 51 00 51 00 69 00 4c 00 69 00 43 00 54 00 79 00 77 00 71 00 39 00 53 00 39 00 33 00 } //01 00  VpJQVivqKqHorPeOlS4DcE19CzUQQiLiCTywq9S93
		$a_01_2 = {5a 00 37 00 43 00 73 00 38 00 56 00 50 00 39 00 6a 00 56 00 73 00 4b 00 6c 00 78 00 4a 00 50 00 43 00 71 00 67 00 55 00 46 00 49 00 64 00 4d 00 35 00 79 00 4b 00 69 00 75 00 50 00 4b 00 36 00 32 00 31 00 35 00 } //01 00  Z7Cs8VP9jVsKlxJPCqgUFIdM5yKiuPK6215
		$a_01_3 = {45 00 48 00 63 00 5a 00 61 00 48 00 4f 00 76 00 46 00 63 00 78 00 32 00 31 00 30 00 } //00 00  EHcZaHOvFcx210
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_12{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 08 00 00 02 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {56 00 41 00 52 00 4d 00 47 00 41 00 4c 00 56 00 41 00 4e 00 49 00 53 00 45 00 52 00 49 00 4e 00 47 00 } //01 00  VARMGALVANISERING
		$a_01_2 = {6b 00 6f 00 6c 00 6c 00 61 00 62 00 6f 00 72 00 61 00 74 00 72 00 73 00 } //01 00  kollaboratrs
		$a_01_3 = {74 00 69 00 6c 00 62 00 61 00 67 00 65 00 6c 00 61 00 67 00 74 00 65 00 } //01 00  tilbagelagte
		$a_01_4 = {56 00 41 00 4e 00 49 00 53 00 48 00 49 00 4e 00 47 00 4c 00 59 00 } //01 00  VANISHINGLY
		$a_01_5 = {4b 00 6f 00 6c 00 6f 00 6e 00 69 00 6d 00 61 00 67 00 74 00 65 00 72 00 35 00 } //01 00  Kolonimagter5
		$a_01_6 = {42 00 61 00 72 00 62 00 65 00 72 00 69 00 6e 00 67 00 65 00 72 00 6e 00 65 00 } //01 00  Barberingerne
		$a_01_7 = {53 00 65 00 6c 00 76 00 6d 00 6f 00 72 00 64 00 73 00 66 00 6f 00 72 00 73 00 67 00 73 00 33 00 } //00 00  Selvmordsforsgs3
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_13{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {5a 00 35 00 7a 00 4c 00 73 00 5a 00 65 00 57 00 4b 00 57 00 38 00 63 00 69 00 74 00 68 00 52 00 6a 00 4d 00 7a 00 75 00 34 00 4f 00 4e 00 37 00 78 00 75 00 4b 00 31 00 34 00 36 00 } //01 00  Z5zLsZeWKW8cithRjMzu4ON7xuK146
		$a_01_2 = {73 00 36 00 30 00 4d 00 66 00 52 00 46 00 62 00 30 00 55 00 4f 00 63 00 56 00 75 00 65 00 46 00 77 00 55 00 41 00 5a 00 47 00 6a 00 31 00 5a 00 30 00 46 00 63 00 31 00 71 00 32 00 72 00 73 00 58 00 39 00 62 00 35 00 36 00 } //01 00  s60MfRFb0UOcVueFwUAZGj1Z0Fc1q2rsX9b56
		$a_01_3 = {63 00 61 00 65 00 33 00 50 00 64 00 41 00 4a 00 49 00 5a 00 39 00 44 00 33 00 39 00 } //01 00  cae3PdAJIZ9D39
		$a_01_4 = {31 00 34 00 36 00 5c 00 73 00 36 00 30 00 4d 00 } //01 00  146\s60M
		$a_01_5 = {56 00 75 00 65 00 46 00 77 00 55 00 41 00 5a 00 47 00 6a 00 31 00 5a 00 30 00 46 00 63 00 31 00 71 00 32 00 72 00 73 00 58 00 39 00 62 00 35 00 36 00 } //00 00  VueFwUAZGj1Z0Fc1q2rsX9b56
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_14{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {61 00 6e 00 74 00 69 00 72 00 61 00 63 00 6b 00 65 00 74 00 65 00 65 00 72 00 69 00 6e 00 67 00 64 00 69 00 67 00 6e 00 69 00 66 00 79 00 69 00 6e 00 67 00 73 00 6f 00 65 00 6b 00 6f 00 65 00 64 00 6f 00 6d 00 69 00 6e 00 61 00 74 00 69 00 } //01 00  antiracketeeringdignifyingsoekoedominati
		$a_01_2 = {54 00 52 00 45 00 4b 00 4c 00 41 00 4e 00 47 00 4c 00 55 00 44 00 57 00 49 00 47 00 52 00 4f 00 4f 00 } //01 00  TREKLANGLUDWIGROO
		$a_01_3 = {4d 00 69 00 63 00 68 00 61 00 65 00 6c 00 6d 00 61 00 73 00 72 00 61 00 73 00 70 00 69 00 74 00 65 00 62 00 69 00 6c 00 6c 00 6f 00 77 00 75 00 6e 00 6c 00 75 00 63 00 6b 00 69 00 65 00 73 00 74 00 } //01 00  Michaelmasraspitebillowunluckiest
		$a_01_4 = {57 00 66 00 4f 00 4d 00 6f 00 44 00 43 00 4e 00 6a 00 64 00 33 00 38 00 7a 00 5a 00 76 00 4a 00 36 00 79 00 73 00 66 00 50 00 52 00 6b 00 6c 00 31 00 34 00 } //01 00  WfOMoDCNjd38zZvJ6ysfPRkl14
		$a_01_5 = {54 00 69 00 6c 00 65 00 66 00 69 00 73 00 68 00 65 00 73 00 73 00 75 00 70 00 72 00 61 00 6d 00 6f 00 6c 00 65 00 63 00 } //00 00  Tilefishessupramolec
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_15{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 02 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {78 00 38 00 6a 00 38 00 30 00 35 00 32 00 32 00 36 00 } //01 00  x8j805226
		$a_01_2 = {6b 00 59 00 73 00 59 00 56 00 66 00 45 00 7a 00 33 00 36 00 } //01 00  kYsYVfEz36
		$a_01_3 = {66 00 32 00 6b 00 75 00 34 00 7a 00 55 00 6a 00 34 00 69 00 4e 00 4c 00 4a 00 41 00 6f 00 52 00 59 00 75 00 34 00 50 00 64 00 78 00 52 00 31 00 34 00 38 00 } //01 00  f2ku4zUj4iNLJAoRYu4PdxR148
		$a_01_4 = {66 00 51 00 36 00 35 00 5a 00 37 00 54 00 31 00 41 00 75 00 46 00 6d 00 4e 00 6f 00 7a 00 5a 00 33 00 6c 00 47 00 32 00 34 00 38 00 61 00 68 00 78 00 6e 00 4c 00 35 00 33 00 } //01 00  fQ65Z7T1AuFmNozZ3lG248ahxnL53
		$a_01_5 = {42 00 6a 00 48 00 58 00 35 00 6f 00 39 00 53 00 51 00 56 00 6c 00 38 00 51 00 53 00 31 00 4e 00 59 00 69 00 77 00 61 00 72 00 71 00 4b 00 32 00 32 00 31 00 } //01 00  BjHX5o9SQVl8QS1NYiwarqK221
		$a_01_6 = {4e 00 63 00 38 00 52 00 6e 00 39 00 75 00 6d 00 6a 00 39 00 65 00 33 00 30 00 } //01 00  Nc8Rn9umj9e30
		$a_01_7 = {6c 00 6e 00 56 00 65 00 46 00 4a 00 34 00 70 00 79 00 30 00 47 00 7a 00 6e 00 57 00 36 00 5a 00 6d 00 77 00 51 00 70 00 69 00 6c 00 4f 00 77 00 65 00 30 00 47 00 77 00 43 00 59 00 48 00 32 00 44 00 76 00 7a 00 67 00 4b 00 31 00 46 00 33 00 30 00 } //00 00  lnVeFJ4py0GznW6ZmwQpilOwe0GwCYH2DvzgK1F30
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_16{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {69 00 6e 00 62 00 69 00 67 00 43 00 61 00 72 00 55 00 50 00 77 00 4d 00 57 00 4f 00 36 00 38 00 } //01 00  inbigCarUPwMWO68
		$a_01_2 = {79 00 73 00 30 00 31 00 44 00 48 00 31 00 59 00 34 00 50 00 79 00 51 00 68 00 54 00 77 00 45 00 53 00 6e 00 78 00 75 00 37 00 39 00 } //01 00  ys01DH1Y4PyQhTwESnxu79
		$a_01_3 = {4b 00 63 00 6f 00 56 00 59 00 32 00 41 00 6f 00 46 00 59 00 34 00 6d 00 43 00 45 00 46 00 5a 00 4f 00 66 00 44 00 30 00 65 00 4e 00 49 00 4d 00 36 00 4c 00 31 00 38 00 39 00 } //01 00  KcoVY2AoFY4mCEFZOfD0eNIM6L189
		$a_01_4 = {54 00 67 00 76 00 66 00 32 00 33 00 33 00 } //01 00  Tgvf233
		$a_01_5 = {6b 00 75 00 30 00 64 00 63 00 76 00 68 00 44 00 71 00 7a 00 32 00 42 00 59 00 51 00 47 00 78 00 54 00 67 00 62 00 31 00 47 00 6f 00 45 00 6b 00 55 00 76 00 35 00 30 00 63 00 55 00 32 00 32 00 32 00 } //01 00  ku0dcvhDqz2BYQGxTgb1GoEkUv50cU222
		$a_01_6 = {75 00 31 00 5a 00 4e 00 53 00 58 00 57 00 4d 00 43 00 33 00 33 00 73 00 4b 00 6f 00 61 00 38 00 58 00 63 00 77 00 51 00 4b 00 6e 00 33 00 38 00 } //01 00  u1ZNSXWMC33sKoa8XcwQKn38
		$a_01_7 = {57 00 70 00 48 00 47 00 67 00 69 00 7a 00 31 00 35 00 32 00 } //01 00  WpHGgiz152
		$a_01_8 = {42 00 63 00 77 00 34 00 59 00 36 00 58 00 79 00 76 00 4e 00 63 00 38 00 33 00 7a 00 55 00 65 00 6f 00 53 00 67 00 31 00 34 00 36 00 } //00 00  Bcw4Y6XyvNc83zUeoSg146
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_17{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 00 6a 00 4e 00 4b 00 6e 00 5a 00 51 00 41 00 36 00 69 00 4d 00 41 00 31 00 33 00 36 00 30 00 54 00 6d 00 45 00 37 00 71 00 70 00 58 00 66 00 64 00 43 00 49 00 31 00 32 00 35 00 4b 00 4f 00 63 00 63 00 5a 00 32 00 32 00 38 00 } //01 00  mjNKnZQA6iMA1360TmE7qpXfdCI125KOccZ228
		$a_01_1 = {47 00 6d 00 4b 00 72 00 61 00 6b 00 4f 00 43 00 4c 00 6e 00 72 00 46 00 36 00 35 00 62 00 59 00 50 00 64 00 39 00 69 00 76 00 41 00 38 00 69 00 37 00 36 00 } //01 00  GmKrakOCLnrF65bYPd9ivA8i76
		$a_01_2 = {52 00 49 00 47 00 79 00 6b 00 4c 00 6c 00 72 00 6c 00 53 00 49 00 6e 00 79 00 73 00 48 00 79 00 57 00 4e 00 73 00 64 00 6c 00 48 00 42 00 71 00 37 00 73 00 70 00 36 00 35 00 52 00 74 00 66 00 4c 00 48 00 79 00 76 00 4f 00 37 00 33 00 } //01 00  RIGykLlrlSInysHyWNsdlHBq7sp65RtfLHyvO73
		$a_01_3 = {4e 00 36 00 43 00 39 00 31 00 31 00 70 00 73 00 6d 00 31 00 34 00 39 00 } //01 00  N6C911psm149
		$a_01_4 = {4b 00 78 00 38 00 68 00 66 00 43 00 6b 00 46 00 73 00 39 00 7a 00 49 00 66 00 68 00 58 00 74 00 76 00 38 00 49 00 78 00 76 00 4c 00 62 00 64 00 6f 00 75 00 31 00 55 00 36 00 6e 00 42 00 47 00 6e 00 59 00 4f 00 68 00 37 00 6e 00 57 00 61 00 35 00 35 00 } //01 00  Kx8hfCkFs9zIfhXtv8IxvLbdou1U6nBGnYOh7nWa55
		$a_01_5 = {52 00 76 00 66 00 52 00 4c 00 6d 00 6b 00 32 00 67 00 55 00 48 00 37 00 44 00 65 00 49 00 72 00 53 00 36 00 79 00 31 00 30 00 34 00 } //01 00  RvfRLmk2gUH7DeIrS6y104
		$a_01_6 = {57 00 69 00 77 00 61 00 41 00 59 00 54 00 31 00 36 00 37 00 } //01 00  WiwaAYT167
		$a_01_7 = {5a 00 68 00 47 00 43 00 41 00 4f 00 6f 00 50 00 66 00 66 00 36 00 52 00 4c 00 31 00 33 00 70 00 63 00 4b 00 5a 00 75 00 75 00 72 00 71 00 57 00 67 00 34 00 31 00 31 00 } //00 00  ZhGCAOoPff6RL13pcKZuurqWg411
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_18{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 02 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //02 00  MSVBVM60.DLL
		$a_81_1 = {6b 6f 78 76 7a 75 69 63 7a 71 65 69 64 73 73 6f 69 6e 6a 7a 75 70 6a 6b 75 68 69 69 71 75 72 } //01 00  koxvzuiczqeidssoinjzupjkuhiiqur
		$a_01_2 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 } //01 00  HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\
		$a_01_3 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4e 00 45 00 54 00 5c 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 5c 00 76 00 32 00 2e 00 30 00 2e 00 35 00 30 00 37 00 32 00 37 00 5c 00 52 00 65 00 67 00 41 00 73 00 6d 00 2e 00 45 00 78 00 45 00 } //01 00  \Microsoft.NET\Framework\v2.0.50727\RegAsm.ExE
		$a_01_4 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4e 00 45 00 54 00 5c 00 46 00 72 00 61 00 6d 00 65 00 77 00 6f 00 72 00 6b 00 5c 00 76 00 34 00 2e 00 30 00 2e 00 33 00 30 00 33 00 31 00 39 00 5c 00 52 00 65 00 67 00 53 00 76 00 63 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  \Microsoft.NET\Framework\v4.0.30319\RegSvcs.exe
		$a_01_5 = {53 00 43 00 48 00 54 00 41 00 53 00 4b 00 53 00 2e 00 65 00 78 00 65 00 20 00 2f 00 43 00 52 00 45 00 41 00 54 00 45 00 20 00 2f 00 53 00 43 00 20 00 4f 00 4e 00 4c 00 4f 00 47 00 4f 00 4e 00 20 00 2f 00 52 00 4c 00 20 00 48 00 49 00 47 00 48 00 45 00 53 00 54 00 20 00 2f 00 54 00 52 00 } //00 00  SCHTASKS.exe /CREATE /SC ONLOGON /RL HIGHEST /TR
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_19{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 02 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {52 00 79 00 67 00 48 00 55 00 62 00 69 00 59 00 36 00 47 00 48 00 6a 00 4d 00 57 00 6d 00 6a 00 34 00 6a 00 4b 00 51 00 79 00 54 00 63 00 69 00 34 00 5a 00 66 00 6a 00 4b 00 31 00 30 00 } //01 00  RygHUbiY6GHjMWmj4jKQyTci4ZfjK10
		$a_01_2 = {4c 00 7a 00 57 00 4f 00 55 00 75 00 6a 00 76 00 48 00 4d 00 47 00 32 00 70 00 58 00 72 00 36 00 79 00 4e 00 70 00 58 00 53 00 6c 00 75 00 4b 00 79 00 6d 00 74 00 59 00 47 00 31 00 38 00 39 00 } //01 00  LzWOUujvHMG2pXr6yNpXSluKymtYG189
		$a_01_3 = {74 00 54 00 71 00 71 00 49 00 74 00 31 00 50 00 6b 00 72 00 55 00 38 00 4d 00 68 00 36 00 44 00 66 00 64 00 77 00 56 00 31 00 63 00 55 00 31 00 35 00 37 00 36 00 50 00 53 00 70 00 6f 00 44 00 74 00 4a 00 6d 00 62 00 4f 00 31 00 39 00 35 00 } //01 00  tTqqIt1PkrU8Mh6DfdwV1cU1576PSpoDtJmbO195
		$a_01_4 = {5a 00 54 00 31 00 54 00 75 00 63 00 58 00 4f 00 4e 00 6d 00 41 00 4c 00 41 00 69 00 31 00 33 00 64 00 36 00 48 00 53 00 75 00 73 00 75 00 61 00 4f 00 31 00 31 00 31 00 } //01 00  ZT1TucXONmALAi13d6HSusuaO111
		$a_01_5 = {70 00 68 00 7a 00 6b 00 53 00 47 00 34 00 57 00 56 00 39 00 38 00 46 00 6a 00 47 00 4f 00 39 00 79 00 5a 00 58 00 44 00 45 00 73 00 43 00 4e 00 5a 00 39 00 79 00 39 00 43 00 6b 00 32 00 33 00 38 00 } //01 00  phzkSG4WV98FjGO9yZXDEsCNZ9y9Ck238
		$a_01_6 = {4a 00 70 00 4a 00 54 00 6f 00 44 00 46 00 72 00 56 00 51 00 57 00 66 00 55 00 4e 00 76 00 73 00 50 00 47 00 63 00 43 00 4e 00 49 00 43 00 36 00 78 00 63 00 61 00 41 00 4c 00 46 00 35 00 39 00 } //01 00  JpJToDFrVQWfUNvsPGcCNIC6xcaALF59
		$a_01_7 = {6f 00 35 00 6c 00 57 00 4e 00 65 00 33 00 45 00 72 00 6b 00 31 00 67 00 6d 00 75 00 5a 00 68 00 44 00 51 00 7a 00 50 00 75 00 33 00 55 00 38 00 4d 00 50 00 57 00 6a 00 49 00 52 00 7a 00 6f 00 4d 00 39 00 32 00 } //00 00  o5lWNe3Erk1gmuZhDQzPu3U8MPWjIRzoM92
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_20{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {54 00 72 00 55 00 52 00 51 00 43 00 75 00 30 00 32 00 6e 00 73 00 46 00 79 00 79 00 32 00 4d 00 56 00 7a 00 51 00 33 00 6c 00 56 00 61 00 61 00 31 00 34 00 74 00 68 00 4f 00 74 00 62 00 48 00 39 00 56 00 47 00 50 00 38 00 62 00 42 00 6d 00 31 00 37 00 37 00 } //01 00  TrURQCu02nsFyy2MVzQ3lVaa14thOtbH9VGP8bBm177
		$a_01_2 = {72 00 6f 00 74 00 6d 00 75 00 61 00 46 00 76 00 35 00 77 00 70 00 33 00 74 00 76 00 63 00 4a 00 76 00 71 00 44 00 35 00 45 00 46 00 36 00 6a 00 6d 00 4a 00 48 00 71 00 41 00 74 00 71 00 47 00 4a 00 41 00 31 00 38 00 32 00 } //01 00  rotmuaFv5wp3tvcJvqD5EF6jmJHqAtqGJA182
		$a_01_3 = {49 00 52 00 4b 00 53 00 31 00 38 00 7a 00 45 00 66 00 61 00 47 00 56 00 49 00 59 00 50 00 35 00 49 00 50 00 57 00 53 00 68 00 45 00 61 00 6e 00 71 00 75 00 39 00 67 00 74 00 6e 00 77 00 64 00 4b 00 32 00 35 00 32 00 } //01 00  IRKS18zEfaGVIYP5IPWShEanqu9gtnwdK252
		$a_01_4 = {45 00 6b 00 35 00 45 00 55 00 58 00 67 00 65 00 61 00 75 00 33 00 59 00 4c 00 73 00 39 00 57 00 6d 00 72 00 38 00 6f 00 58 00 5a 00 48 00 70 00 62 00 50 00 56 00 46 00 4b 00 6b 00 34 00 7a 00 68 00 62 00 6b 00 79 00 6a 00 6f 00 33 00 32 00 } //01 00  Ek5EUXgeau3YLs9Wmr8oXZHpbPVFKk4zhbkyjo32
		$a_01_5 = {6e 00 46 00 6f 00 43 00 34 00 31 00 64 00 44 00 51 00 72 00 53 00 35 00 6d 00 43 00 44 00 6d 00 66 00 32 00 65 00 64 00 33 00 4c 00 51 00 38 00 37 00 6b 00 67 00 56 00 53 00 54 00 63 00 75 00 72 00 4f 00 31 00 32 00 36 00 } //01 00  nFoC41dDQrS5mCDmf2ed3LQ87kgVSTcurO126
		$a_01_6 = {57 00 72 00 54 00 45 00 63 00 79 00 66 00 50 00 69 00 31 00 32 00 30 00 } //01 00  WrTEcyfPi120
		$a_01_7 = {65 00 6a 00 44 00 71 00 74 00 31 00 7a 00 4e 00 61 00 4d 00 5a 00 44 00 78 00 67 00 59 00 43 00 36 00 66 00 68 00 63 00 38 00 63 00 79 00 68 00 6e 00 63 00 7a 00 6d 00 5a 00 37 00 52 00 47 00 4a 00 56 00 74 00 51 00 73 00 31 00 31 00 } //01 00  ejDqt1zNaMZDxgYC6fhc8cyhnczmZ7RGJVtQs11
		$a_01_8 = {56 00 33 00 72 00 53 00 31 00 45 00 63 00 65 00 69 00 30 00 50 00 77 00 33 00 30 00 62 00 36 00 34 00 } //00 00  V3rS1Ecei0Pw30b64
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_21{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {58 00 6e 00 70 00 39 00 71 00 66 00 66 00 79 00 45 00 43 00 6d 00 4e 00 6e 00 65 00 6a 00 4b 00 6d 00 57 00 71 00 5a 00 64 00 58 00 4f 00 49 00 31 00 36 00 38 00 } //01 00  Xnp9qffyECmNnejKmWqZdXOI168
		$a_01_2 = {71 00 70 00 50 00 61 00 64 00 37 00 48 00 4e 00 54 00 7a 00 33 00 4e 00 30 00 67 00 68 00 7a 00 41 00 34 00 72 00 75 00 51 00 73 00 33 00 41 00 32 00 48 00 35 00 73 00 44 00 74 00 68 00 79 00 46 00 32 00 32 00 38 00 } //01 00  qpPad7HNTz3N0ghzA4ruQs3A2H5sDthyF228
		$a_01_3 = {49 00 68 00 7a 00 57 00 75 00 41 00 31 00 4d 00 4c 00 4a 00 58 00 36 00 41 00 38 00 71 00 55 00 4e 00 4f 00 4a 00 6b 00 51 00 31 00 31 00 30 00 30 00 } //01 00  IhzWuA1MLJX6A8qUNOJkQ1100
		$a_01_4 = {45 00 6c 00 73 00 73 00 44 00 55 00 68 00 77 00 5a 00 78 00 48 00 49 00 69 00 63 00 65 00 4d 00 71 00 35 00 57 00 4f 00 38 00 4d 00 44 00 47 00 52 00 4d 00 6b 00 48 00 4e 00 6b 00 56 00 72 00 64 00 6c 00 62 00 56 00 32 00 33 00 37 00 } //01 00  ElssDUhwZxHIiceMq5WO8MDGRMkHNkVrdlbV237
		$a_01_5 = {48 00 72 00 63 00 73 00 50 00 61 00 32 00 63 00 32 00 70 00 50 00 72 00 49 00 70 00 5a 00 48 00 53 00 70 00 50 00 58 00 38 00 53 00 31 00 55 00 55 00 50 00 77 00 78 00 54 00 78 00 43 00 4e 00 4a 00 6f 00 65 00 48 00 5a 00 30 00 79 00 78 00 32 00 } //01 00  HrcsPa2c2pPrIpZHSpPX8S1UUPwxTxCNJoeHZ0yx2
		$a_01_6 = {68 00 52 00 70 00 43 00 6c 00 64 00 53 00 4d 00 70 00 4f 00 39 00 38 00 33 00 50 00 6f 00 49 00 44 00 6e 00 61 00 6f 00 4f 00 74 00 62 00 44 00 76 00 73 00 69 00 71 00 31 00 75 00 4c 00 78 00 6f 00 73 00 4e 00 55 00 38 00 5a 00 69 00 31 00 39 00 33 00 } //01 00  hRpCldSMpO983PoIDnaoOtbDvsiq1uLxosNU8Zi193
		$a_01_7 = {76 00 56 00 33 00 71 00 39 00 52 00 52 00 6b 00 45 00 59 00 4e 00 58 00 4d 00 53 00 79 00 75 00 33 00 49 00 6a 00 48 00 64 00 37 00 46 00 37 00 48 00 7a 00 50 00 32 00 30 00 33 00 } //01 00  vV3q9RRkEYNXMSyu3IjHd7F7HzP203
		$a_01_8 = {41 00 38 00 33 00 39 00 5a 00 31 00 6f 00 65 00 41 00 53 00 63 00 33 00 49 00 5a 00 7a 00 33 00 79 00 61 00 62 00 36 00 34 00 51 00 31 00 35 00 31 00 } //00 00  A839Z1oeASc3IZz3yab64Q151
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Fareit_VB_MTB_22{
	meta:
		description = "Trojan:Win32/Fareit.VB!MTB,SIGNATURE_TYPE_PEHSTR,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_01_1 = {50 00 55 00 4c 00 78 00 39 00 4a 00 39 00 39 00 65 00 50 00 30 00 6a 00 52 00 56 00 33 00 70 00 37 00 4f 00 4a 00 48 00 78 00 56 00 72 00 76 00 75 00 67 00 37 00 44 00 4e 00 6d 00 56 00 32 00 31 00 } //00 00  PULx9J99eP0jRV3p7OJHxVrvug7DNmV21
	condition:
		any of ($a_*)
 
}