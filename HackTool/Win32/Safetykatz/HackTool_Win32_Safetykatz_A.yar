
rule HackTool_Win32_Safetykatz_A{
	meta:
		description = "HackTool:Win32/Safetykatz.A,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_01_0 = {7a 00 4c 00 31 00 37 00 66 00 42 00 4e 00 56 00 2b 00 6a 00 67 00 38 00 61 00 56 00 4a 00 49 00 6f 00 57 00 55 00 43 00 4e 00 46 00 43 00 31 00 61 00 70 00 43 00 6f 00 58 00 55 00 45 00 73 00 42 00 72 00 57 00 31 00 67 00 4a 00 6c 00 32 00 41 00 68 00 4e 00 49 00 61 00 4a 00 56 00 62 00 56 00 5a 00 41 00 71 00 69 00 4c 00 69 00 67 00 31 00 70 00 4a 00 41 00 46 00 56 00 51 00 77 00 4c 00 52 00 4b 00 50 00 34 00 37 00 6f 00 75 00 72 00 72 00 71 00 36 00 72 00 6e 00 64 00 5a 00 4c 00 77 00 75 00 36 00 4b 00 6c 00 42 00 57 00 62 00 43 00 6d 00 39 00 63 00 57 00 73 00 70 00 } //10 zL17fBNV+jg8aVJIoWUCNFC1apCoXUEsBrW1gJl2AhNIaJVbVZAqiLig1pJAFVQwLRKP47ourrq6rndZLwu6KlBWbCm9cWsp
	condition:
		((#a_01_0  & 1)*10) >=10
 
}