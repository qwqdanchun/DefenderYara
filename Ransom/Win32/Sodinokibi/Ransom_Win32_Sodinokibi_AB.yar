
rule Ransom_Win32_Sodinokibi_AB{
	meta:
		description = "Ransom:Win32/Sodinokibi.AB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {49 51 41 68 41 43 41 41 52 41 42 42 41 45 34 41 52 77 42 46 41 46 49 41 49 41 41 68 41 43 45 41 49 51 41 4e 41 41 6f 41 52 41 42 50 41 45 34 41 56 41 41 67 41 48 51 41 63 67 42 35 41 43 41 41 64 41 42 76 41 43 41 41 59 77 42 6f 41 47 45 41 62 67 42 6e 41 47 55 41 49 41 42 6d 41 47 6b 41 62 41 42 6c 41 48 4d 41 49 41 42 69 41 48 6b 41 49 41 42 35 41 47 38 41 64 51 42 79 41 48 4d 41 5a 51 42 73 41 47 59 41 4c 41 41 67 41 45 51 41 54 77 42 4f 41 46 51 41 49 41 42 31 41 48 4d 41 5a 51 41 67 41 47 45 41 62 67 42 35 41 43 41 41 64 41 42 6f 41 47 6b 41 63 67 42 6b 41 43 41 41 63 41 42 68 41 48 49 41 64 41 42 35 41 43 41 41 63 77 42 76 41 47 59 41 64 41 42 33 41 47 45 41 63 67 42 6c 41 43 41 41 5a 67 42 76 41 48 49 } //1 IQAhACAARABBAE4ARwBFAFIAIAAhACEAIQANAAoARABPAE4AVAAgAHQAcgB5ACAAdABvACAAYwBoAGEAbgBnAGUAIABmAGkAbABlAHMAIABiAHkAIAB5AG8AdQByAHMAZQBsAGYALAAgAEQATwBOAFQAIAB1AHMAZQAgAGEAbgB5ACAAdABoAGkAcgBkACAAcABhAHIAdAB5ACAAcwBvAGYAdAB3AGEAcgBlACAAZgBvAHI
		$a_01_1 = {41 49 41 42 79 41 47 55 41 63 77 42 30 41 47 38 41 63 67 42 70 41 47 34 41 5a 77 41 67 41 48 6b 41 62 77 42 31 41 48 49 41 49 41 42 6b 41 47 45 41 64 41 42 68 41 43 41 41 62 77 42 79 41 43 41 41 59 51 42 75 41 48 51 41 61 51 42 32 41 47 6b 41 63 67 42 31 41 48 4d 41 49 41 42 7a 41 47 38 41 62 41 42 31 41 48 51 41 61 51 42 76 41 47 34 41 63 77 41 67 41 43 30 41 49 41 42 70 41 48 51 41 63 77 41 67 41 47 30 41 59 51 42 35 41 43 41 41 5a 51 42 75 41 48 51 41 59 51 42 70 41 47 77 41 49 41 42 6b 41 47 45 41 62 51 42 6e 41 47 55 41 49 41 42 76 41 47 59 41 49 41 42 30 41 47 67 41 5a 51 41 67 41 48 41 41 63 67 42 70 41 48 59 41 59 51 42 30 41 47 55 41 49 41 42 72 41 47 55 41 65 51 41 67 41 47 45 41 62 67 42 6b 41 43 } //1 AIAByAGUAcwB0AG8AcgBpAG4AZwAgAHkAbwB1AHIAIABkAGEAdABhACAAbwByACAAYQBuAHQAaQB2AGkAcgB1AHMAIABzAG8AbAB1AHQAaQBvAG4AcwAgAC0AIABpAHQAcwAgAG0AYQB5ACAAZQBuAHQAYQBpAGwAIABkAGEAbQBnAGUAIABvAGYAIAB0AGgAZQAgAHAAcgBpAHYAYQB0AGUAIABrAGUAeQAgAGEAbgBkAC
		$a_01_2 = {7b 45 58 54 7d 2d 72 65 61 64 6d 65 2e 74 78 74 22 2c 22 65 78 70 22 3a 66 61 6c 73 65 2c 22 69 6d 67 22 3a } //1 {EXT}-readme.txt","exp":false,"img":
		$a_01_3 = {42 73 41 47 55 41 4c 67 41 67 41 46 6b 41 62 77 42 31 41 43 41 41 59 77 42 68 41 47 34 41 49 41 42 6a 41 47 67 41 5a 51 42 6a 41 47 73 41 49 41 42 70 41 48 51 41 4f 67 41 67 41 47 45 41 62 41 42 73 41 43 41 41 5a 67 42 70 41 47 77 41 5a 51 42 7a 41 43 41 41 62 77 42 75 41 43 41 41 65 51 42 76 41 48 55 41 63 67 41 67 41 48 4d 41 65 51 42 7a 41 48 51 41 5a 51 42 74 41 43 41 41 61 41 42 68 41 48 4d 41 49 41 42 6c 41 48 67 41 64 41 42 6c 41 47 34 41 63 77 42 70 41 47 38 41 62 67 41 67 41 48 73 41 52 51 42 59 41 46 51 } //1 BsAGUALgAgAFkAbwB1ACAAYwBhAG4AIABjAGgAZQBjAGsAIABpAHQAOgAgAGEAbABsACAAZgBpAGwAZQBzACAAbwBuACAAeQBvAHUAcgAgAHMAeQBzAHQAZQBtACAAaABhAHMAIABlAHgAdABlAG4AcwBpAG8AbgAgAHsARQBYAFQ
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}