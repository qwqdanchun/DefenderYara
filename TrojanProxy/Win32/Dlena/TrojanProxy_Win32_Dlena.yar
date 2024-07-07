
rule TrojanProxy_Win32_Dlena{
	meta:
		description = "TrojanProxy:Win32/Dlena,SIGNATURE_TYPE_PEHSTR,0c 00 0a 00 0e 00 00 "
		
	strings :
		$a_01_0 = {6e 65 74 73 68 20 66 69 72 65 77 61 6c 6c 20 73 65 74 20 61 6c 6c 6f 77 65 64 70 72 6f 67 72 61 6d 20 25 73 20 65 6e 61 62 6c 65 } //1 netsh firewall set allowedprogram %s enable
		$a_01_1 = {68 74 74 70 3a 2f 2f 77 69 6e 64 6f 77 73 75 70 64 61 74 65 2e 6d 69 63 72 6f 73 6f 66 74 2e 63 6f 6d 2f } //1 http://windowsupdate.microsoft.com/
		$a_01_2 = {63 75 72 72 65 6e 74 73 79 73 74 65 6d 68 41 6e 44 6c 65 52 } //1 currentsystemhAnDleR
		$a_01_3 = {74 6f 20 4d 58 20 28 65 72 72 20 23 25 69 29 } //1 to MX (err #%i)
		$a_01_4 = {5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 4f 70 74 } //1 \CurrentVersion\WinOpt
		$a_01_5 = {69 66 20 65 78 69 73 74 20 22 25 73 22 20 67 6f 74 6f 20 52 65 70 65 61 74 } //1 if exist "%s" goto Repeat
		$a_01_6 = {23 33 32 37 37 30 } //1 #32770
		$a_01_7 = {5c 25 69 25 69 25 69 32 6c 64 2e 65 78 65 } //1 \%i%i%i2ld.exe
		$a_01_8 = {32 30 38 2e 36 36 2e 31 39 34 2e 39 } //1 208.66.194.9
		$a_01_9 = {25 52 4e 44 5f 48 45 58 } //1 %RND_HEX
		$a_01_10 = {25 52 4e 44 5f 4e 55 4d } //1 %RND_NUM
		$a_01_11 = {25 52 4e 44 5f 44 49 47 49 54 } //1 %RND_DIGIT
		$a_01_12 = {6e 6f 20 6d 61 69 6c 62 6f 78 20 68 65 72 65 } //1 no mailbox here
		$a_01_13 = {d1 27 d1 47 04 d1 57 08 d1 57 0c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=10
 
}