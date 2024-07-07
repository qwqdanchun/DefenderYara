
rule Ransom_Win32_Sodinokibi_G_MSR{
	meta:
		description = "Ransom:Win32/Sodinokibi.G!MSR,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {51 51 42 73 41 47 77 41 49 41 42 76 41 47 59 41 49 41 42 35 41 47 38 41 64 51 42 79 41 43 41 41 5a 67 42 70 41 47 77 41 5a 51 42 7a 41 43 41 41 59 51 42 79 41 47 55 41 49 41 42 6c 41 47 34 41 59 77 42 79 41 48 6b 41 63 41 42 30 41 47 55 41 5a 41 41 68 41 41 30 41 43 67 41 4e 41 41 6f 41 52 67 42 70 41 47 34 41 5a 41 41 67 41 48 73 41 52 51 42 59 41 46 51 41 66 51 41 74 41 48 49 41 5a 51 42 68 41 47 51 41 62 51 42 6c 41 43 34 41 64 41 42 34 41 48 51 41 49 41 42 68 41 47 34 41 5a 41 41 67 41 47 59 41 62 77 42 73 41 47 77 41 62 77 42 33 41 43 41 41 61 51 42 75 41 48 4d 41 64 41 42 31 41 47 4d 41 64 41 42 70 41 47 38 41 62 67 42 7a 41 41 41 41 } //1 QQBsAGwAIABvAGYAIAB5AG8AdQByACAAZgBpAGwAZQBzACAAYQByAGUAIABlAG4AYwByAHkAcAB0AGUAZAAhAA0ACgANAAoARgBpAG4AZAAgAHsARQBYAFQAfQAtAHIAZQBhAGQAbQBlAC4AdAB4AHQAIABhAG4AZAAgAGYAbwBsAGwAbwB3ACAAaQBuAHMAdAB1AGMAdABpAG8AbgBzAAAA
		$a_01_1 = {4c 51 41 74 41 43 30 41 50 51 41 39 41 44 30 41 49 41 42 58 41 47 55 41 62 41 42 6a 41 47 38 41 62 51 42 6c 41 43 34 41 49 41 42 42 41 47 63 41 59 51 42 70 41 47 34 41 4c 67 41 67 41 44 30 41 50 51 41 39 41 43 30 41 4c 51 41 74 41 41 30 41 43 67 41 4e 41 41 6f 41 57 77 41 72 41 46 30 41 49 41 42 58 41 47 67 41 59 51 42 30 41 48 4d 41 49 41 42 49 41 47 45 41 63 41 42 77 41 47 55 41 62 67 41 } //1 LQAtAC0APQA9AD0AIABXAGUAbABjAG8AbQBlAC4AIABBAGcAYQBpAG4ALgAgAD0APQA9AC0ALQAtAA0ACgANAAoAWwArAF0AIABXAGgAYQB0AHMAIABIAGEAcABwAGUAbgA
		$a_01_2 = {41 63 67 42 35 41 48 51 41 61 41 42 70 41 47 34 41 5a 77 41 67 41 47 59 41 62 77 42 79 41 43 41 41 63 67 42 6c 41 48 4d 41 64 41 42 76 41 48 49 41 61 51 42 75 41 47 63 41 4c 41 41 67 41 47 49 41 64 51 42 30 41 43 41 41 63 41 42 73 41 47 55 41 59 51 42 7a 41 47 55 41 49 41 42 7a 41 47 67 41 62 77 42 31 41 47 77 41 5a 41 41 67 41 47 34 41 62 77 42 30 41 43 41 41 61 51 42 75 41 48 51 41 5a 51 42 79 41 47 59 41 5a 51 42 79 41 47 55 41 4c 67 41 4e 41 41 6f 41 49 51 41 68 41 43 45 41 49 41 41 68 41 43 45 41 49 51 41 67 41 43 45 41 49 51 41 68 41 41 41 41 } //1 AcgB5AHQAaABpAG4AZwAgAGYAbwByACAAcgBlAHMAdABvAHIAaQBuAGcALAAgAGIAdQB0ACAAcABsAGUAYQBzAGUAIABzAGgAbwB1AGwAZAAgAG4AbwB0ACAAaQBuAHQAZQByAGYAZQByAGUALgANAAoAIQAhACEAIAAhACEAIQAgACEAIQAhAAAA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}