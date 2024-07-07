
rule TrojanDropper_Win32_Netsky_D{
	meta:
		description = "TrojanDropper:Win32/Netsky.D,SIGNATURE_TYPE_PEHSTR,1b 00 18 00 06 00 00 "
		
	strings :
		$a_01_0 = {55 27 6c 27 74 27 69 27 6d 27 61 27 74 27 69 27 76 27 65 20 27 45 27 6e 27 63 27 72 27 79 27 70 27 74 27 65 27 64 20 27 57 27 6f 27 72 27 6d 27 44 27 72 27 6f 27 70 27 70 27 65 27 72 27 20 27 62 27 79 20 27 53 27 6b 27 79 27 4e 27 65 27 74 27 2e 27 43 27 5a 27 20 27 43 27 6f 27 72 27 70 } //6 U'l't'i'm'a't'i'v'e 'E'n'c'r'y'p't'e'd 'W'o'r'm'D'r'o'p'p'e'r' 'b'y 'S'k'y'N'e't'.'C'Z' 'C'o'r'p
		$a_01_1 = {27 44 27 72 27 6f 27 70 27 70 27 65 27 64 27 53 27 6b 27 79 27 4e 27 65 27 74 27 } //6 'D'r'o'p'p'e'd'S'k'y'N'e't'
		$a_01_2 = {27 53 27 6b 27 79 27 4e 27 65 27 74 27 46 27 69 27 67 27 68 27 74 27 73 27 42 27 61 27 63 27 6b } //6 'S'k'y'N'e't'F'i'g'h't's'B'a'c'k
		$a_01_3 = {44 27 72 27 6f 27 70 27 70 27 65 27 72 27 20 27 62 27 79 20 27 53 27 6b 27 79 27 4e 27 65 27 74 27 2e 27 43 27 5a 27 20 27 43 27 6f 27 72 27 70 2a 27 } //6 D'r'o'p'p'e'r' 'b'y 'S'k'y'N'e't'.'C'Z' 'C'o'r'p*'
		$a_01_4 = {46 56 50 72 6f 74 65 63 74 2e 65 78 65 } //3 FVProtect.exe
		$a_01_5 = {75 73 65 72 63 6f 6e 66 69 67 39 78 2e 64 6c 6c } //3 userconfig9x.dll
	condition:
		((#a_01_0  & 1)*6+(#a_01_1  & 1)*6+(#a_01_2  & 1)*6+(#a_01_3  & 1)*6+(#a_01_4  & 1)*3+(#a_01_5  & 1)*3) >=24
 
}