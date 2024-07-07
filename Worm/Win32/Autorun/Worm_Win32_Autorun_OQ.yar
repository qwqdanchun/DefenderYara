
rule Worm_Win32_Autorun_OQ{
	meta:
		description = "Worm:Win32/Autorun.OQ,SIGNATURE_TYPE_PEHSTR,15 00 15 00 03 00 00 "
		
	strings :
		$a_01_0 = {43 57 6f 72 6d 42 65 67 69 6e 00 00 6e 65 74 2e 65 78 65 00 61 75 74 6f 72 75 6e 2e 69 6e 66 00 73 68 65 6c 6c 5c 41 75 74 6f 5c 63 6f 6d 6d 61 6e 64 3d 6e 65 74 2e 65 78 65 } //10
		$a_01_1 = {3c 69 66 72 61 6d 65 20 73 72 63 3d 68 74 74 70 3a 2f 2f 25 37 37 25 37 37 25 37 37 25 32 45 25 36 42 25 36 31 25 36 45 25 36 37 25 36 42 25 32 45 25 36 33 25 36 45 2f 25 36 31 25 33 32 25 32 45 25 36 38 25 37 34 25 36 44 20 77 69 64 74 68 3d 30 20 68 65 69 67 68 74 3d 30 3e 3c 2f 69 66 72 61 6d 65 3e } //10 <iframe src=http://%77%77%77%2E%6B%61%6E%67%6B%2E%63%6E/%61%32%2E%68%74%6D width=0 height=0></iframe>
		$a_01_2 = {34 44 33 36 45 39 36 37 2d 45 33 32 35 2d 31 31 43 45 2d 42 46 43 31 2d 30 38 30 30 32 42 45 31 30 33 31 38 } //1 4D36E967-E325-11CE-BFC1-08002BE10318
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1) >=21
 
}