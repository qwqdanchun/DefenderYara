
rule Trojan_O97M_Donoff_SK_MSR{
	meta:
		description = "Trojan:O97M/Donoff.SK!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {70 2c 3a 2c 5c 2c 6a 2c 76 2c 61 2c 71 2c 62 2c 6a 2c 66 2c 5c 2c 66 2c 6c 2c 66 2c 67 2c 72 2c 7a 2c 33 2c 32 2c 5c 2c 7a 2c 66 2c 75 2c 67 2c 6e 2c 2e 2c 72 2c 6b 2c 72 2c } //1 p,:,\,j,v,a,q,b,j,f,\,f,l,f,g,r,z,3,2,\,z,f,u,g,n,.,r,k,r,
		$a_01_1 = {50 2c 3a 2c 5c 2c 68 2c 66 2c 72 2c 65 2c 66 2c 5c 2c 63 2c 68 2c 6f 2c 79 2c 76 2c 70 2c 5c 2c 76 2c 61 2c 2e 2c 70 2c 62 2c 7a 2c } //1 P,:,\,h,f,r,e,f,\,c,h,o,y,v,p,\,v,a,.,p,b,z,
		$a_01_2 = {50 2c 3a 2c 5c 2c 68 2c 66 2c 72 2c 65 2c 66 2c 5c 2c 63 2c 68 2c 6f 2c 79 2c 76 2c 70 2c 5c 2c 76 2c 61 2c 2e 2c 75 2c 67 2c 7a 2c 79 2c } //1 P,:,\,h,f,r,e,f,\,c,h,o,y,v,p,\,v,a,.,u,g,z,y,
		$a_01_3 = {49 66 20 28 78 25 20 3e 20 36 34 20 41 6e 64 20 78 25 20 3c 20 39 31 29 20 4f 72 20 28 78 25 20 3e 20 39 36 20 41 6e 64 20 78 25 20 3c 20 31 32 33 29 } //1 If (x% > 64 And x% < 91) Or (x% > 96 And x% < 123)
		$a_01_4 = {79 25 20 3d 20 36 35 38 20 2d 20 36 34 35 } //1 y% = 658 - 645
		$a_01_5 = {78 25 20 3d 20 78 25 20 2d 20 79 25 } //1 x% = x% - y%
		$a_01_6 = {49 66 20 78 25 20 3c 20 39 37 20 41 6e 64 20 78 25 20 3e 20 38 33 20 54 68 65 6e 20 78 25 20 3d 20 78 25 20 2b 20 32 36 20 45 6c 73 65 20 49 66 20 78 25 20 3c 20 36 35 20 54 68 65 6e 20 78 25 20 3d 20 78 25 20 2b 20 32 36 } //1 If x% < 97 And x% > 83 Then x% = x% + 26 Else If x% < 65 Then x% = x% + 26
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}