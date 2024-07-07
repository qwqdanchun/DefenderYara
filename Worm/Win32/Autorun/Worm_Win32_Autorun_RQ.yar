
rule Worm_Win32_Autorun_RQ{
	meta:
		description = "Worm:Win32/Autorun.RQ,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {5c 00 4d 00 59 00 20 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 5c 00 56 00 69 00 72 00 6f 00 73 00 5c 00 43 00 6f 00 70 00 79 00 20 00 54 00 6f 00 20 00 66 00 69 00 6c 00 65 00 20 00 61 00 6e 00 64 00 20 00 64 00 72 00 69 00 76 00 65 00 20 00 61 00 75 00 74 00 6f 00 5c 00 64 00 69 00 72 00 63 00 76 00 65 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //1 \MY Project\Viros\Copy To file and drive auto\dircve\Project1.vbp
		$a_01_1 = {72 00 6f 00 6f 00 6d 00 65 00 7a 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2e 00 70 00 65 00 72 00 73 00 69 00 61 00 6e 00 67 00 69 00 67 00 2e 00 63 00 6f 00 6d 00 2f 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 2f 00 6d 00 6c 00 6f 00 67 00 67 00 69 00 6e 00 66 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //1 roomezonline.persiangig.com/password/mlogginf32.exe
		$a_01_2 = {52 00 65 00 67 00 53 00 76 00 72 00 33 00 32 00 00 00 00 00 02 00 00 00 20 00 00 00 18 00 00 00 5c 00 41 00 4f 00 53 00 4d 00 54 00 50 00 2e 00 64 00 6c 00 6c 00 } //1
		$a_01_3 = {43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 00 00 00 00 72 00 65 00 67 00 77 00 72 00 69 00 74 00 65 00 } //1
		$a_01_4 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 66 00 69 00 6e 00 64 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 62 00 6f 00 6f 00 74 00 2e 00 65 00 78 00 65 00 00 00 18 00 00 00 5c 00 41 00 55 00 54 00 4f 00 52 00 55 00 4e 00 2e 00 49 00 4e 00 46 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}