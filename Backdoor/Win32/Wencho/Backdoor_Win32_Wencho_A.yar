
rule Backdoor_Win32_Wencho_A{
	meta:
		description = "Backdoor:Win32/Wencho.A,SIGNATURE_TYPE_PEHSTR,01 00 01 00 03 00 00 "
		
	strings :
		$a_01_0 = {77 69 6e 65 63 68 6f 2e 00 00 00 00 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 00 00 20 00 00 00 22 00 00 00 2f 63 20 63 6f 70 79 20 22 00 00 00 5c 74 61 73 6b 68 6f 73 74 2e 65 78 65 00 } //1
		$a_01_1 = {2f 63 20 70 6f 77 65 72 73 68 65 6c 6c 20 2d 6e 6f 70 20 2d 77 69 6e 20 68 69 64 64 65 6e 20 2d 6e 6f 6e 69 20 2d 65 6e 63 20 4a 41 41 78 41 43 41 41 50 51 41 67 41 43 63 41 4a 41 42 6a 41 43 41 41 50 51 41 67 41 43 63 41 4a 77 42 62 41 45 51 41 62 41 42 73 41 45 6b 41 62 51 42 77 41 47 } //1 /c powershell -nop -win hidden -noni -enc JAAxACAAPQAgACcAJABjACAAPQAgACcAJwBbAEQAbABsAEkAbQBwAG
		$a_01_2 = {41 41 77 41 43 77 41 4d 41 42 34 41 44 55 41 4e 67 41 73 41 44 41 41 65 41 41 31 41 44 4d 41 4c 41 41 77 41 48 67 41 4e 51 41 33 41 43 77 41 4d 41 42 34 41 44 59 41 4f 41 41 73 41 44 41 41 65 41 41 77 41 44 49 41 4c 41 41 77 41 48 67 41 5a 41 41 35 41 43 77 41 4d 41 42 34 41 47 4d 41 4f 41 41 73 41 44 41 41 65 41 41 31 41 47 59 41 4c 41 41 77 41 48 67 41 5a 67 42 6d 41 43 77 41 4d 41 42 34 41 47 51 41 4e 51 41 73 41 44 41 41 65 41 41 77 41 44 45 41 4c 41 41 77 41 48 67 41 59 77 41 7a 41 43 77 41 4d 41 42 34 41 44 49 41 4f 51 41 73 41 44 41 41 65 41 42 6a 41 44 59 41 4c 41 41 77 41 48 67 41 4f 41 41 31 41 43 77 41 4d } //1 AAwACwAMAB4ADUANgAsADAAeAA1ADMALAAwAHgANQA3ACwAMAB4ADYAOAAsADAAeAAwADIALAAwAHgAZAA5ACwAMAB4AGMAOAAsADAAeAA1AGYALAAwAHgAZgBmACwAMAB4AGQANQAsADAAeAAwADEALAAwAHgAYwAzACwAMAB4ADIAOQAsADAAeABjADYALAAwAHgAOAA1ACwAM
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=1
 
}