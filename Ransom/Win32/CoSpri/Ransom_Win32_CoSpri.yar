
rule Ransom_Win32_CoSpri{
	meta:
		description = "Ransom:Win32/CoSpri,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {73 70 72 69 74 65 63 6f 69 6e 64 2e 64 61 74 } //1 spritecoind.dat
		$a_01_1 = {73 70 72 69 74 65 63 6f 69 6e 64 2e 65 78 65 } //1 spritecoind.exe
		$a_01_2 = {6c 69 62 67 63 6a 2d 31 33 2e 64 6c 6c } //1 libgcj-13.dll
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 4d 61 69 6e 5c 46 65 61 74 75 72 65 43 6f 6e 74 72 6f 6c 5c 46 45 41 54 55 52 45 5f 42 52 4f 57 53 45 52 5f 45 4d 55 4c 41 54 49 4f 4e } //1 Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION
		$a_01_4 = {25 30 61 25 32 30 25 37 36 25 36 31 25 37 32 25 32 30 25 36 31 25 36 34 25 36 34 25 37 32 25 32 30 25 33 64 25 32 30 25 36 33 25 36 38 25 36 31 25 37 32 25 37 33 25 32 65 25 36 61 25 36 66 25 36 39 25 36 65 25 32 38 25 32 37 25 32 37 25 32 39 25 32 65 25 37 32 25 36 35 25 37 30 25 36 63 25 36 31 25 36 33 25 36 35 25 32 38 25 32 66 25 35 62 25 35 65 25 34 31 25 32 64 25 35 61 25 36 31 25 32 64 25 37 61 25 33 30 25 32 64 25 33 39 25 35 64 25 32 66 25 36 37 25 32 63 25 32 30 25 32 37 25 32 37 25 32 39 25 32 65 25 37 33 25 36 63 25 36 39 25 36 33 25 36 35 25 32 38 25 33 30 25 32 63 25 33 39 25 33 35 25 32 39 25 33 62 } //1 %0a%20%76%61%72%20%61%64%64%72%20%3d%20%63%68%61%72%73%2e%6a%6f%69%6e%28%27%27%29%2e%72%65%70%6c%61%63%65%28%2f%5b%5e%41%2d%5a%61%2d%7a%30%2d%39%5d%2f%67%2c%20%27%27%29%2e%73%6c%69%63%65%28%30%2c%39%35%29%3b
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}