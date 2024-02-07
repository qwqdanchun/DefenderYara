
rule Ransom_Win32_Roodcol{
	meta:
		description = "Ransom:Win32/Roodcol,SIGNATURE_TYPE_PEHSTR_EXT,ffffffbd 00 ffffffbd 00 1f 00 00 36 00 "
		
	strings :
		$a_01_0 = {63 6f 70 79 20 22 4c 6f 63 64 6f 6f 72 2e 65 78 65 22 20 22 43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 53 74 61 72 74 20 4d 65 6e 75 5c 50 72 6f 67 72 61 6d 73 5c 53 74 61 72 74 55 70 5c 74 65 6d 70 30 30 30 30 30 30 30 30 2e 65 78 65 22 } //36 00  copy "Locdoor.exe" "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\temp00000000.exe"
		$a_01_1 = {65 63 68 6f 20 59 6f 75 72 20 63 6f 6d 70 75 74 65 72 27 73 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 20 74 6f 20 4c 6f 63 64 6f 6f 72 20 52 61 6e 73 6f 6d 77 61 72 65 21 } //36 00  echo Your computer's files have been encrypted to Locdoor Ransomware!
		$a_01_2 = {73 74 61 72 74 20 68 74 74 70 3a 2f 2f 39 77 33 37 68 64 65 39 32 6f 71 76 63 65 77 32 33 35 2e 63 72 65 61 74 6f 72 6c 69 6e 6b 2e 6e 65 74 2f } //36 00  start http://9w37hde92oqvcew235.creatorlink.net/
		$a_01_3 = {33 36 34 61 70 79 74 52 4b 4e 55 58 46 6d 56 73 6b 35 7a 38 57 66 31 54 37 74 59 63 6f 44 31 52 54 5a } //1b 00  364apytRKNUXFmVsk5z8Wf1T7tYcoD1RTZ
		$a_01_4 = {59 6f 75 72 20 63 6f 6d 70 75 74 65 72 27 73 20 69 6d 70 6f 72 74 61 6e 74 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 21 } //01 00  Your computer's important files have been encrypted!
		$a_01_5 = {72 65 6e 20 2a 2e 6d 70 34 20 2a 2e 64 6f 6f 72 31 } //01 00  ren *.mp4 *.door1
		$a_01_6 = {72 65 6e 20 2a 2e 61 76 69 20 2a 2e 64 6f 6f 72 32 } //01 00  ren *.avi *.door2
		$a_01_7 = {72 65 6e 20 2a 2e 6d 70 33 20 2a 2e 64 6f 6f 33 72 } //01 00  ren *.mp3 *.doo3r
		$a_01_8 = {72 65 6e 20 2a 2e 74 78 74 20 2a 2e 64 6f 6f 72 34 } //01 00  ren *.txt *.door4
		$a_01_9 = {72 65 6e 20 2a 2e 68 77 70 20 2a 2e 64 6f 6f 35 72 } //01 00  ren *.hwp *.doo5r
		$a_01_10 = {72 65 6e 20 2a 2e 70 70 74 78 20 2a 2e 64 6f 6f 72 36 } //01 00  ren *.pptx *.door6
		$a_01_11 = {72 65 6e 20 2a 2e 64 6f 63 78 20 2a 2e 64 6f 6f 72 37 } //01 00  ren *.docx *.door7
		$a_01_12 = {72 65 6e 20 2a 2e 78 6c 73 78 20 2a 2e 64 6f 6f 72 38 } //01 00  ren *.xlsx *.door8
		$a_01_13 = {72 65 6e 20 2a 2e 68 74 6d 6c 20 2a 2e 64 6f 6f 72 39 } //01 00  ren *.html *.door9
		$a_01_14 = {72 65 6e 20 2a 2e 78 6d 6c 20 2a 2e 64 6f 6f 72 31 30 } //01 00  ren *.xml *.door10
		$a_01_15 = {72 65 6e 20 2a 2e 61 6d 72 20 2a 2e 64 6f 6f 72 31 31 } //01 00  ren *.amr *.door11
		$a_01_16 = {72 65 6e 20 2a 2e 6d 6f 76 20 2a 2e 64 6f 6f 72 31 32 } //01 00  ren *.mov *.door12
		$a_01_17 = {72 65 6e 20 2a 2e 6d 6b 76 20 2a 2e 64 6f 6f 72 31 33 } //01 00  ren *.mkv *.door13
		$a_01_18 = {72 65 6e 20 2a 2e 77 61 76 20 2a 2e 64 6f 6f 72 31 34 } //01 00  ren *.wav *.door14
		$a_01_19 = {72 65 6e 20 2a 2e 77 6d 76 20 2a 2e 64 6f 6f 72 31 35 } //01 00  ren *.wmv *.door15
		$a_01_20 = {72 65 6e 20 2a 2e 77 6d 61 20 2a 2e 64 6f 6f 72 31 36 } //01 00  ren *.wma *.door16
		$a_01_21 = {72 65 6e 20 2a 2e 74 61 72 20 2a 2e 64 6f 6f 72 31 37 } //01 00  ren *.tar *.door17
		$a_01_22 = {72 65 6e 20 2a 2e 70 6e 67 20 2a 2e 64 6f 6f 72 31 38 } //01 00  ren *.png *.door18
		$a_01_23 = {72 65 6e 20 2a 2e 6a 70 67 20 2a 2e 64 6f 6f 72 31 39 } //01 00  ren *.jpg *.door19
		$a_01_24 = {72 65 6e 20 2a 2e 6a 70 65 67 20 2a 2e 64 6f 6f 72 32 30 } //01 00  ren *.jpeg *.door20
		$a_01_25 = {72 65 6e 20 2a 2e 62 6d 70 20 2a 2e 64 6f 6f 72 32 31 } //01 00  ren *.bmp *.door21
		$a_01_26 = {72 65 6e 20 2a 2e 72 61 72 20 2a 2e 64 6f 6f 72 32 32 } //01 00  ren *.rar *.door22
		$a_01_27 = {72 65 6e 20 2a 2e 6a 61 72 20 2a 2e 64 6f 6f 72 32 33 } //01 00  ren *.jar *.door23
		$a_01_28 = {72 65 6e 20 2a 2e 7a 69 70 20 2a 2e 64 6f 6f 72 32 34 } //01 00  ren *.zip *.door24
		$a_01_29 = {72 65 6e 20 2a 2e 37 7a 20 2a 2e 64 6f 6f 72 32 35 } //01 00  ren *.7z *.door25
		$a_01_30 = {72 65 6e 20 2a 2e 69 73 6f 20 2a 2e 64 6f 6f 72 32 36 } //00 00  ren *.iso *.door26
		$a_00_31 = {5d 04 00 00 53 be 03 80 5c 26 00 00 54 be 03 80 00 00 01 00 32 00 10 00 52 61 6e 73 6f 6d 3a 4d 53 49 4c 2f 4c 6f 78 72 00 00 01 40 05 82 70 00 04 00 67 16 00 00 52 d1 ab 5a eb 33 fd 99 bd d9 ca 13 00 9a 08 00 01 20 41 c6 f3 ee 5d 04 00 00 54 be 03 80 5c 31 00 00 55 be 03 80 00 00 01 00 08 00 1b 00 ac 21 41 63 63 65 73 } //73 69 
	condition:
		any of ($a_*)
 
}