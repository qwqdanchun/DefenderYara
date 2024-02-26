
rule Trojan_Win32_Zusy_ASG_MTB{
	meta:
		description = "Trojan:Win32/Zusy.ASG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {32 46 38 37 36 31 43 46 31 34 38 46 38 38 43 32 36 34 30 44 42 42 41 37 38 33 45 46 32 39 31 37 } //01 00  2F8761CF148F88C2640DBBA783EF2917
		$a_01_1 = {77 67 31 34 38 2e 63 6f 6d 2f 6e 65 77 67 6f 2e 68 74 6d 6c 30 } //01 00  wg148.com/newgo.html0
		$a_01_2 = {46 32 37 33 30 38 33 35 5f 32 32 32 39 5f 34 34 35 45 5f 39 37 43 37 5f 6c 33 46 37 36 31 32 37 37 31 44 41 } //01 00  F2730835_2229_445E_97C7_l3F7612771DA
		$a_01_3 = {7a 79 2e 61 6e 6a 69 61 6e 2e 63 6f 6d 2f 73 6f 66 74 2f 78 6a 6c 2f 78 6a 6c 2e 70 68 70 } //01 00  zy.anjian.com/soft/xjl/xjl.php
		$a_01_4 = {78 75 6e 78 75 6e 6a 70 2e 63 6f 6d 2f 31 30 31 38 6a 70 2e 74 78 74 } //01 00  xunxunjp.com/1018jp.txt
		$a_01_5 = {36 61 61 30 62 37 37 64 2d 34 35 32 61 2d 34 37 32 37 2d 61 32 63 32 2d 65 30 33 38 30 38 32 32 37 65 61 31 } //01 00  6aa0b77d-452a-4727-a2c2-e03808227ea1
		$a_01_6 = {7b 45 35 30 30 30 31 39 38 2d 34 34 37 31 2d 34 30 65 32 2d 39 32 42 43 2d 44 30 42 41 30 37 35 42 44 42 42 32 7d } //01 00  {E5000198-4471-40e2-92BC-D0BA075BDBB2}
		$a_01_7 = {36 33 20 36 45 20 32 46 20 37 31 20 36 44 20 36 31 20 36 33 20 37 32 20 36 46 20 32 46 20 37 30 20 36 43 20 37 35 20 36 37 20 36 39 20 36 45 20 32 45 20 36 38 20 37 34 20 36 44 } //01 00  63 6E 2F 71 6D 61 63 72 6F 2F 70 6C 75 67 69 6E 2E 68 74 6D
		$a_01_8 = {37 39 20 37 35 20 33 37 20 33 36 20 33 38 20 33 38 20 36 42 20 37 33 20 36 43 20 36 39 20 36 46 } //01 00  79 75 37 36 38 38 6B 73 6C 69 6F
		$a_01_9 = {66 00 75 00 66 00 7a 00 65 00 62 00 74 00 55 00 56 00 61 00 49 00 4b 00 54 00 54 00 53 00 5f 00 5d 00 5e 00 5b 00 60 00 5d 00 6f 00 72 00 6e 00 6b 00 79 00 75 00 72 00 } //00 00  fufzebtUVaIKTTS_]^[`]ornkyur
	condition:
		any of ($a_*)
 
}