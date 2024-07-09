
rule Adware_Win32_Bayads{
	meta:
		description = "Adware:Win32/Bayads,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {2e 73 72 66 3f 72 69 64 3d 63 6e 70 79 70 72 63 73 5f 24 7b 56 52 53 4e 7d 5f 24 7b 4d 4d 50 52 44 43 54 7d 5f 24 46 52 53 54 41 56 24 5f 24 43 4e 50 59 49 44 24 5b 24 52 42 41 53 45 24 5d 26 68 61 72 64 49 64 3d 24 48 52 44 49 44 24 26 74 61 67 3d 24 54 41 47 } //1 .srf?rid=cnpyprcs_${VRSN}_${MMPRDCT}_$FRSTAV$_$CNPYID$[$RBASE$]&hardId=$HRDID$&tag=$TAG
		$a_01_1 = {5f 00 6e 00 6f 00 61 00 76 00 5f 00 33 00 66 00 69 00 72 00 74 00 73 00 74 00 49 00 6e 00 69 00 74 00 } //1 _noav_3firtstInit
		$a_03_2 = {8d 50 d8 80 fa 56 77 1a 0f be c0 83 e8 28 78 ?? 8b 15 ?? ?? ?? ?? 8b 12 3b 42 f4 7f ?? 8a 04 02 eb 09 3c 25 75 05 a0 ?? ?? ?? ?? 88 01 43 41 3b de 72 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}
rule Adware_Win32_Bayads_2{
	meta:
		description = "Adware:Win32/Bayads,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_01_0 = {70 72 64 63 74 3d 24 7b 6d 6d 70 72 64 63 74 7d 26 74 6c 62 72 49 64 3d 62 61 73 65 26 61 66 6c 74 3d 24 7b 61 66 6c 74 49 64 7d 26 69 6e 73 74 6c 44 61 74 65 3d 24 7b 69 6e 73 74 6c 44 61 79 7d 26 76 72 73 6e 3d 24 7b 76 72 73 6e 7d 26 69 6e 73 74 6c 52 65 66 3d 24 7b 69 6e 73 74 6c 52 65 66 7d } //1 prdct=${mmprdct}&tlbrId=base&aflt=${afltId}&instlDate=${instlDay}&vrsn=${vrsn}&instlRef=${instlRef}
		$a_03_1 = {73 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 2e 00 6d 00 6f 00 6e 00 74 00 69 00 65 00 72 00 61 00 2e 00 63 00 6f 00 6d 00 2f 00 72 00 65 00 70 00 6f 00 72 00 74 00 73 00 2f 00 6a 00 73 00 43 00 6e 00 74 00 2e 00 73 00 72 00 66 00 3f 00 72 00 69 00 64 00 3d 00 63 00 72 00 61 00 73 00 68 00 5f 00 63 00 6e 00 70 00 79 00 5f 00 25 00 73 00 5f 00 25 00 78 00 5f 00 25 00 78 00 [0-02] 25 00 73 00 5d 00 26 00 68 00 61 00 72 00 64 00 49 00 64 00 3d 00 25 00 73 00 } //1
		$a_03_2 = {63 72 72 55 6e 69 73 6e 74 6c 44 73 70 6c 79 3d [0-10] 63 72 72 44 73 70 6c 79 3d [0-0f] 70 72 64 63 74 55 6e 69 6e 73 74 3d [0-0f] 61 70 70 73 3d } //1
		$a_03_3 = {73 6d 70 6c 47 72 70 3d [0-10] 69 6e 73 74 6c 52 65 66 [0-80] 6c 61 62 65 6c 3d } //-10
		$a_03_4 = {5b 6d 61 69 6e 5d 0d 0a 65 70 3d [0-10] 65 70 49 44 3d ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? [0-80] 73 6d 70 6c 47 72 70 3d [0-10] 69 6e 73 74 6c 52 65 66 } //-10
		$a_01_5 = {34 30 36 31 39 34 37 46 2d 46 35 34 46 2d 34 39 31 32 2d 39 32 32 43 2d 31 36 32 34 46 45 42 38 37 34 36 46 } //-10 4061947F-F54F-4912-922C-1624FEB8746F
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*-10+(#a_03_4  & 1)*-10+(#a_01_5  & 1)*-10) >=3
 
}