
rule Joke_Win32_FakeAlert_gen_A{
	meta:
		description = "Joke:Win32/FakeAlert.gen!A,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {72 60 31 00 46 6f 72 6d 31 00 45 76 69 6c 47 75 79 00 52 65 73 6f 75 72 63 65 73 00 45 76 69 6c } //1 恲1潆浲1癅汩畇y敒潳牵散s癅汩
		$a_01_1 = {64 6f 77 6e 00 45 78 69 74 00 45 76 69 6c 47 75 } //1 潤湷䔀楸t癅汩畇
		$a_01_2 = {32 30 30 38 00 00 0c 01 00 07 45 76 69 6c 47 75 } //1
		$a_01_3 = {47 75 79 5c 45 76 69 6c 47 75 79 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 45 76 69 6c 47 75 79 2e } //1 Guy\EvilGuy\obj\Release\EvilGuy.
		$a_01_4 = {00 75 00 20 00 67 00 6f 00 74 00 20 00 61 00 20 00 76 00 69 00 72 00 75 00 73 00 21 00 20 00 48 00 6f 00 77 00 20 00 74 00 68 00 65 00 20 00 68 } //1
		$a_01_5 = {00 75 00 79 00 20 00 41 00 20 00 4d 00 61 00 63 00 21 00 00 23 45 00 76 00 69 00 6c 00 47 00 75 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}