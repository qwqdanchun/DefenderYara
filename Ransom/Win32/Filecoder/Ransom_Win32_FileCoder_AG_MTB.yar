
rule Ransom_Win32_FileCoder_AG_MTB{
	meta:
		description = "Ransom:Win32/FileCoder.AG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {52 65 61 64 6d 65 20 69 66 20 79 6f 75 20 77 61 6e 74 20 79 6f 75 72 20 66 69 6c 65 73 21 2e 74 78 74 } //1 Readme if you want your files!.txt
		$a_01_1 = {54 68 65 72 65 20 69 73 20 6e 6f 20 77 61 79 20 74 6f 20 67 65 74 20 62 61 63 6b 20 79 6f 75 72 20 66 69 6c 65 73 2e 20 48 61 70 70 79 20 63 6f 64 69 6e 67 } //1 There is no way to get back your files. Happy coding
		$a_01_2 = {72 61 6e 73 6f 6d 2e 6a 70 67 } //1 ransom.jpg
		$a_01_3 = {2e 71 71 62 61 6e 67 62 61 6e 67 } //1 .qqbangbang
		$a_01_4 = {63 6d 64 2e 65 78 65 20 2f 43 20 70 69 6e 67 20 31 2e 31 2e 31 2e 31 20 2d 6e 20 31 20 2d 77 20 33 30 30 30 20 3e 20 4e 75 6c 20 26 20 44 65 6c } //1 cmd.exe /C ping 1.1.1.1 -n 1 -w 3000 > Nul & Del
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}
rule Ransom_Win32_FileCoder_AG_MTB_2{
	meta:
		description = "Ransom:Win32/FileCoder.AG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {6d 00 61 00 69 00 6c 00 2c 00 2e 00 62 00 61 00 6b 00 2c 00 2e 00 63 00 66 00 67 00 2c 00 2e 00 73 00 71 00 6c 00 2c 00 2e 00 6c 00 6f 00 67 00 2c 00 2e 00 64 00 6f 00 63 00 2c 00 2e 00 78 00 6d 00 6c 00 } //1 mail,.bak,.cfg,.sql,.log,.doc,.xml
		$a_01_1 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 72 00 65 00 61 00 64 00 5f 00 66 00 6f 00 72 00 5f 00 79 00 6f 00 75 00 72 00 5f 00 66 00 69 00 6c 00 65 00 73 00 2e 00 74 00 78 00 74 00 } //1 ProgramData\read_for_your_files.txt
		$a_01_2 = {59 00 4f 00 55 00 52 00 20 00 46 00 49 00 4c 00 45 00 53 00 20 00 41 00 52 00 45 00 20 00 45 00 4e 00 43 00 52 00 59 00 50 00 54 00 45 00 44 00 } //1 YOUR FILES ARE ENCRYPTED
		$a_01_3 = {45 00 6e 00 63 00 20 00 64 00 77 00 42 00 6c 00 41 00 48 00 59 00 41 00 64 00 41 00 42 00 31 00 41 00 48 00 51 00 41 00 61 00 51 00 42 00 73 00 41 00 43 00 41 00 41 00 5a 00 51 00 42 00 73 00 41 00 43 00 41 00 41 00 66 00 41 00 41 00 67 00 41 00 45 00 59 00 41 00 62 00 77 00 42 00 79 00 41 00 47 00 55 00 41 00 59 00 51 00 42 00 6a 00 41 00 47 00 67 00 41 00 4c 00 51 00 42 00 50 00 41 00 47 00 49 00 41 00 61 00 67 00 42 00 6c 00 41 00 47 00 4d 00 41 00 64 00 41 00 41 00 67 00 41 00 48 00 73 00 41 00 64 00 77 00 42 00 6c 00 41 00 48 00 59 00 41 00 64 00 41 00 42 00 31 00 41 00 48 00 51 00 41 00 61 00 51 00 42 00 73 00 41 00 43 00 41 00 41 00 59 00 77 00 42 00 73 00 41 00 43 00 41 00 41 00 49 00 67 00 41 00 6b 00 41 00 46 00 38 00 } //1 Enc dwBlAHYAdAB1AHQAaQBsACAAZQBsACAAfAAgAEYAbwByAGUAYQBjAGgALQBPAGIAagBlAGMAdAAgAHsAdwBlAHYAdAB1AHQAaQBsACAAYwBsACAAIgAkAF8
		$a_01_4 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5c 00 6d 00 70 00 63 00 6d 00 64 00 72 00 75 00 6e 00 2e 00 65 00 78 00 65 00 } //1 Windows Defender\mpcmdrun.exe
		$a_01_5 = {2d 00 72 00 65 00 6d 00 6f 00 76 00 65 00 64 00 65 00 66 00 69 00 6e 00 69 00 74 00 69 00 6f 00 6e 00 73 00 20 00 2d 00 61 00 6c 00 6c 00 } //1 -removedefinitions -all
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}