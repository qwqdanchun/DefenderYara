
rule Trojan_Win32_Oplot_B{
	meta:
		description = "Trojan:Win32/Oplot.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 41 00 70 00 70 00 5c 00 41 00 70 00 70 00 58 00 62 00 66 00 31 00 33 00 64 00 34 00 65 00 61 00 32 00 39 00 34 00 35 00 34 00 34 00 34 00 64 00 38 00 62 00 31 00 33 00 65 00 32 00 31 00 32 00 31 00 63 00 62 00 36 00 62 00 36 00 36 00 33 00 5c 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //1 SOFTWARE\App\AppXbf13d4ea2945444d8b13e2121cb6b663\Application
		$a_01_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 41 00 70 00 70 00 5c 00 41 00 70 00 70 00 58 00 62 00 66 00 31 00 33 00 64 00 34 00 65 00 61 00 32 00 39 00 34 00 35 00 34 00 34 00 34 00 64 00 38 00 62 00 31 00 33 00 65 00 32 00 31 00 32 00 31 00 63 00 62 00 36 00 62 00 36 00 36 00 33 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 49 00 63 00 6f 00 6e 00 } //1 SOFTWARE\App\AppXbf13d4ea2945444d8b13e2121cb6b663\DefaultIcon
		$a_01_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 41 00 70 00 70 00 5c 00 41 00 70 00 70 00 58 00 37 00 30 00 31 00 36 00 32 00 34 00 38 00 36 00 63 00 37 00 35 00 35 00 34 00 66 00 37 00 66 00 38 00 30 00 66 00 34 00 38 00 31 00 39 00 38 00 35 00 64 00 36 00 37 00 35 00 38 00 36 00 64 00 5c 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //1 SOFTWARE\App\AppX70162486c7554f7f80f481985d67586d\Application
		$a_01_3 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 41 00 70 00 70 00 5c 00 41 00 70 00 70 00 58 00 37 00 30 00 31 00 36 00 32 00 34 00 38 00 36 00 63 00 37 00 35 00 35 00 34 00 66 00 37 00 66 00 38 00 30 00 66 00 34 00 38 00 31 00 39 00 38 00 35 00 64 00 36 00 37 00 35 00 38 00 36 00 64 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 49 00 63 00 6f 00 6e 00 } //1 SOFTWARE\App\AppX70162486c7554f7f80f481985d67586d\DefaultIcon
		$a_01_4 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 41 00 70 00 70 00 5c 00 41 00 70 00 70 00 58 00 33 00 37 00 63 00 63 00 37 00 66 00 64 00 63 00 63 00 64 00 36 00 34 00 34 00 62 00 34 00 66 00 38 00 35 00 66 00 34 00 62 00 32 00 32 00 64 00 35 00 61 00 33 00 66 00 31 00 30 00 35 00 61 00 5c 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //1 SOFTWARE\App\AppX37cc7fdccd644b4f85f4b22d5a3f105a\Application
		$a_01_5 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 41 00 70 00 70 00 5c 00 41 00 70 00 70 00 58 00 33 00 37 00 63 00 63 00 37 00 66 00 64 00 63 00 63 00 64 00 36 00 34 00 34 00 62 00 34 00 66 00 38 00 35 00 66 00 34 00 62 00 32 00 32 00 64 00 35 00 61 00 33 00 66 00 31 00 30 00 35 00 61 00 5c 00 44 00 65 00 66 00 61 00 75 00 6c 00 74 00 49 00 63 00 6f 00 6e 00 } //1 SOFTWARE\App\AppX37cc7fdccd644b4f85f4b22d5a3f105a\DefaultIcon
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=2
 
}