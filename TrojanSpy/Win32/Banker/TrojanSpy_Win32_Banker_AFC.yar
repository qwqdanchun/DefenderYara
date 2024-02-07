
rule TrojanSpy_Win32_Banker_AFC{
	meta:
		description = "TrojanSpy:Win32/Banker.AFC,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 0e 8b 1f 39 d9 75 58 4a 74 15 8b 4e 04 8b 5f 04 39 d9 75 4b 83 c6 08 83 c7 08 4a 75 e2 eb 06 83 c6 04 83 c7 04 5a 83 e2 03 74 22 8b 0e 8b 1f 38 d9 75 41 } //01 00 
		$a_01_1 = {49 23 6e 25 73 2a 74 40 61 23 6c 23 65 25 20 2a 6f 2a 20 23 49 25 74 2a 61 40 fa 40 20 23 47 25 75 2a 61 2a 72 23 64 25 69 2a e3 40 6f 40 20 23 70 25 61 2a 72 23 61 23 20 25 74 2a 65 40 72 40 20 23 61 25 63 25 65 2a 73 23 73 25 6f 2a 2e 2a } //01 00 
		$a_01_2 = {25 6e 2a 75 40 52 23 5c 25 6e 25 6f 2a 69 23 73 25 72 25 65 2a 56 40 74 40 6e 23 65 25 72 2a 72 2a 75 23 43 25 5c 2a 73 2a 77 40 6f 23 64 25 6e 25 69 2a 57 23 5c 25 74 2a 66 2a 6f 40 73 23 6f 25 72 2a 63 2a 69 23 4d 25 } //00 00  %n*u@R#\%n%o*i#s%r%e*V@t@n#e%r*r*u#C%\*s*w@o#d%n%i*W#\%t*f*o@s#o%r*c*i#M%
	condition:
		any of ($a_*)
 
}